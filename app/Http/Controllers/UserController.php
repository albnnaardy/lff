<?php

namespace App\Http\Controllers;
use Illuminate\Http\User;
use Illuminate\Http\Team;
use Illuminate\Http\Emloyee;



class UserController extends Controller
{
    public function getStatistics()
{
    return [
        'total_users' => User::count(),
        'total_teams' => Team::count(),
        'total_employees' => Employee::count(),
    ];
}
}
