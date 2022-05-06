@foreach ($menus = dashboard_menu()->getAll() as $menu)
@php $menu = apply_filters(BASE_FILTER_DASHBOARD_MENU, $menu); @endphp

<?= $userId = Auth::user()->id; ?>
@if($userId != 1)
@if(trans($menu['name']) != 'Locations' )
<li class="nav-item @if ($menu['active']) active @endif" id="{{ $menu['id'] }}">
  <a href="{{ $menu['url'] }}" class="nav-link nav-toggle">
    <i class="{{ $menu['icon'] }}"></i>
    <span class="title">
      {{ !is_array(trans($menu['name'])) ? trans($menu['name']) : null }}
      {!! apply_filters(BASE_FILTER_APPEND_MENU_NAME, null, $menu['id']) !!}</span>
    @if (isset($menu['children']) && count($menu['children'])) <span class="arrow @if ($menu['active']) open @endif"></span> @endif
  </a>
  @if (isset($menu['children']) && count($menu['children']))
  <ul class="sub-menu @if (!$menu['active']) hidden-ul @endif">
    @foreach ($menu['children'] as $item)
    @if(trans($item['name']) != 'Features' && trans($item['name']) != 'Facilities' && trans($item['name']) != 'Investors' && trans($item['name']) != 'Categories' && trans($item['name']) != 'Tags')
    <li class="nav-item @if ($item['active']) active @endif" id="{{ $item['id'] }}">
      <a href="{{ $item['url'] }}" class="nav-link">
        <i class="{{ $item['icon'] }}"></i>
        {{ trans($item['name']) }}
        {!! apply_filters(BASE_FILTER_APPEND_MENU_NAME, null, $item['id']) !!}</span>
      </a>
    </li>
    @endif
    @endforeach

  </ul>
  @endif
</li>
@endif
@endif

@if($userId == 1 )
<li class="nav-item @if ($menu['active']) active @endif" id="{{ $menu['id'] }}">
  <a href="{{ $menu['url'] }}" class="nav-link nav-toggle">
    <i class="{{ $menu['icon'] }}"></i>
    <span class="title">
      {{ !is_array(trans($menu['name'])) ? trans($menu['name']) : null }}
      {!! apply_filters(BASE_FILTER_APPEND_MENU_NAME, null, $menu['id']) !!}</span>
    @if (isset($menu['children']) && count($menu['children'])) <span class="arrow @if ($menu['active']) open @endif"></span> @endif
  </a>
  @if (isset($menu['children']) && count($menu['children']))
  <ul class="sub-menu @if (!$menu['active']) hidden-ul @endif">
    @foreach ($menu['children'] as $item)
    <li class="nav-item @if ($item['active']) active @endif" id="{{ $item['id'] }}">
      <a href="{{ $item['url'] }}" class="nav-link">
        <i class="{{ $item['icon'] }}"></i>
        {{ trans($item['name']) }}
        {!! apply_filters(BASE_FILTER_APPEND_MENU_NAME, null, $item['id']) !!}</span>
      </a>
    </li>
    @endforeach
  </ul>
  @endif
</li>
@endif

@endforeach

<style>
  #cms-plugins-payments {
    display: none;
  }

  #cms-plugins-real-estate-settings {
    display: none;
  }

  #cms-core-appearance {
    display: none;
  }

  #cms-core-plugins {
    display: none;
  }

  #cms-plugin-translation {
    display: none;
  }

  #cms-plugins-language {
    display: none;
  }

  #cms-packages-slug-permalink {
    display: none;
  }

  #cms-plugins-social-login {
    display: none;
  }

  #cms-core-page {
    display: none;
  }

  #cms-core-system-information {
    display: none;
  }

  #cms-core-system-cache {
    display: none;
  }

  #cms-plugin-audit-log {
    display: none;
  }

  #cms-core-system-updater {
    display: none;
  }

  #cms-plugins-career {
    display: none;
  }

  .note .note-warning {
    display: none;
  }

  #cms-core-platform-administration>span.title {
    background-color: blue;
  }
</style>