<div class="tools">
    <a href="#" class="{{ Arr::get($settings, 'state', 'expand') }} a" data-bs-toggle="tooltip" title="{{ trans('core/dashboard::dashboard.collapse_expand') }}" data-state="{{ Arr::get($settings, 'state', 'expand') == 'collapse' ? 'expand' : 'collapse' }}"></a>
    <a href="#" class="reload a" data-bs-toggle="tooltip" title="{{ trans('core/dashboard::dashboard.reload') }}"></a>
    <a href="#" class="fullscreen a" data-bs-toggle="tooltip" data-bs-original-title="{{ trans('core/dashboard::dashboard.fullscreen') }}" title="{{ trans('core/dashboard::dashboard.fullscreen') }}"> </a>
    <a href="#" class="remove a" data-bs-toggle="tooltip" title="{{ trans('core/dashboard::dashboard.hide') }}"></a>
</div>

<style>
    .a{
        background-color:white !important;
    }
</style>
