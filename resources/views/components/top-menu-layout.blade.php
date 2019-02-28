<ul class="navbar-nav ml-auto">
     @foreach($items as $menu_item)
        @if($menu_item->children->count() == 0)
            <li class="nav-item">
                <a class="nav-link" href="{!! $menu_item->url !!}">{{$menu_item->title}}</a>
            </li>
        @else
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    {{$menu_item->title}}
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    @foreach($menu_item->children as $item)
                        <a class="dropdown-item" href="{!! $item->url !!}">{!! $item->title !!}</a>
                    @endforeach
                </div>
            </li>
        @endif
    @endforeach
</ul>


