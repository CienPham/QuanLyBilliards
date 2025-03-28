<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{
    use HasFactory;

    protected $fillable = ['table_id', 'customer_id', 'start_time', 'end_time', 'status'];

    public function table()
    {
        return $this->belongsTo(Table::class);
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

    public function reservationServices()
    {
        return $this->hasMany(ReservationService::class);
    }

    public function services()
    {
        return $this->belongsToMany(Service::class, 'reservation_services')
                    ->withPivot('quantity')
                    ->withTimestamps();
    }
}