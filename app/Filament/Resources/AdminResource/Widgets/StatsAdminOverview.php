<?php

namespace App\Filament\Resources\AdminResource\Widgets;

use App\Models\Post;
use App\Models\User;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;


class StatsAdminOverview extends BaseWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make('Users', User::query()->count())
            ->description('All users from the database')
            ->descriptionIcon('heroicon-m-arrow-trending-up')
            ->color('success'),

            Stat::make('Post', Post::query()->count())
        ->description('All users from the database')
        ->descriptionIcon('heroicon-m-arrow-trending-up')
        ->color('success'),


        ];
    }
}
