<?php

namespace App\Providers;

// use Illuminate\Support\Facades\Gate;
use  \Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The model to policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        Post::class => [
            AdminPolicy::class,
            UserPolicy::class,
        ],
    ];


    /**
     * Register any authentication / authorization services.
     */
public function boot()
{
    $this->registerPolicies();

   Gate::define('update-user', 'App\Policies\UserPolicy@update');
    Gate::define('delete-user', 'App\Policies\UserPolicy@delete');
}

}
