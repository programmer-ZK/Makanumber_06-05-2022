<style>
  .scontent {
    width: 100% !important;
    overflow: hidden !important;
  }

  .scontent img {
    width: 800px !important;
    /* width: 100% !important; */
  }
</style>
<div class="container padtop50">
  <div class="row">
    <div class="col-sm-9">
      <h2 class="pt-5 mb-3">{{ $post->name }}</h2>

      {!! Theme::partial('post-meta', compact('post')) !!}

      <div class="scontent mt-1">
        {!! clean($post->content) !!}
        <br>
        {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, theme_option('facebook_comment_enabled_in_post', 'yes') == 'yes' ? Theme::partial('comments') : null) !!}
        <br>
        @if ($post->tags->count())
        <div class="ps-tags">
          <p>
            <strong>{{ __('Tags') }}</strong>: @foreach ($post->tags as $tag)
            <a href="{{ $tag->url }}">{{ $tag->name }}</a>@if (!$loop->last), @endif
            @endforeach
          </p>
        </div>
        @endif
        <br>
        {!! Theme::partial('share', ['title' => __('Share this post'), 'description' => $post->description]) !!}
      </div>
      <div class="clearfix"></div>
      @php $relatedPosts = get_related_posts($post->id, 2); @endphp

      @if ($relatedPosts->count())
      <br>
      <h5><strong>{{ __('Related posts') }}</strong>:</h5>
      <div class="blog-container">
        <div class="row">
          @foreach ($relatedPosts as $relatedItem)
          <div class="col-md-6 col-sm-6 container-grid">
            <div class="grid-in">
              <div class="grid-shadow grid-shadow-gray">
                <div class="hourseitem" style="margin-top: 0;">
                  <div class="blii">
                    <div class="img">
                      <img style="border-radius: 0;width: 100%;" class="thumb" data-src="{{ RvMedia::getImageUrl($relatedItem->image, 'small', false, RvMedia::getDefaultImage()) }}" src="{{ RvMedia::getImageUrl($relatedItem->image, 'small', false, RvMedia::getDefaultImage()) }}" alt="{{ $relatedItem->name }}">
                    </div>
                    <a href="{{ $relatedItem->url }}" class="linkdetail"></a>
                  </div>
                </div>
                <div class="grid-h">
                  <div class="blog-title">
                    <a href="{{ route('public.single', $relatedItem->slug) }}">
                      <h2>
                        {{\Illuminate\Support\Str::limit($relatedItem->name, 30)}}
                      </h2>
                    </a>
                    <div class="post-meta">
                      <p class="d-inline-block">{{ $relatedItem->created_at->translatedFormat('d M, Y') }}</p> - <p class="d-inline-block"><i class="fa fa-eye"></i> {{ number_format($relatedItem->views) }}</p>
                    </div>
                  </div>
                  <div class="blog-excerpt">
                    <p>
                      {{\Illuminate\Support\Str::limit($relatedItem->description, 100)}}
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          @endforeach
        </div>
      </div>
      @endif
    </div>
    <div class="col-sm-3">
      {!! dynamic_sidebar('primary_sidebar') !!}
    </div>
  </div>
</div>
<br>
<br>