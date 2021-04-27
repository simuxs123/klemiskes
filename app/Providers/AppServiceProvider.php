<?php

namespace App\Providers;

use App\Namas;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $max=Namas::where('plotas','<>','')->max('plotas');
        $min=Namas::where('plotas','<>','')->min('plotas');
        Schema::defaultStringLength(191);
        View::share('min', $min);
        View::share('max', $max);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
