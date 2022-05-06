<?php
$user = \App\Models\UserModel::find($item->id);
$documents = \App\Models\Document::where('user_id', $item->id)->get();
?>
@foreach($documents as $doc)
@if($doc->count() >=1)

<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
<i class="fas fa-badge-check" aria-hidden="true" style="color:#00b4a2;"></i>

<a href="#openModal-about1/{{$item->id}}" class="btn btn-icon btn-warning " data-bs-toggle="tooltip" data-section="" role="button" data-bs-original-title="Documents">
    <i class="fa fa-file"></i>
</a>

<div id="openModal-about1/{{$item->id}}" class="modalDialog">
    <div>
        <a href="#close" title="Close" class="close">X</a>
        <div style="display:flex; flex-direction:column; float:left; text-align:left;">
            @if($doc->letter)
            <a href="{{asset('public/storage/documents/'.$doc->letter)}}">Mortgage Pre-Approval Letter</a>
            @endif
            @if($doc->funds)
            <a href="{{asset('public/storage/documents/'.$doc->funds)}}">Proof Funds</a>
            @endif
            @if($doc->home_sale)
            <a href="{{asset('public/storage/documents/'.$doc->letter)}}">Home Sale Documents</a>
            @endif
        </div>
    </div>
</div>
@endif
@endforeach


@if (Auth::user()->hasPermission('users.edit'))
<a href="{{ route('users.profile.view', $item->id) }}" class="btn btn-icon btn-primary" data-bs-toggle="tooltip" data-bs-original-title="{{ trans('core/acl::users.view_user_profile') }}"><i class="fa fa-eye"></i></a>
@endif

@if (Auth::user()->hasPermission('users.destroy'))
<a href="#" class="btn btn-icon btn-danger deleteDialog" data-bs-toggle="tooltip" data-section="{{ route('users.destroy', $item->id) }}" role="button" data-bs-original-title="{{ trans('core/base::tables.delete_entry') }}">
    <i class="fa fa-trash"></i>
</a>
@endif



<style>
    * {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }

    .modalDialog {
        position: fixed;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        background: rgba(0, 0, 0, 0.8);
        z-index: 99999;
        opacity: 0;
        -webkit-transition: opacity 100ms ease-in;
        -moz-transition: opacity 100ms ease-in;
        transition: opacity 100ms ease-in;
        pointer-events: none;
    }

    .modalDialog:target {
        opacity: 1;
        pointer-events: auto;
    }

    .modalDialog>div {
        max-width: 700px;
        width: 80%;
        position: relative;
        margin: 40px auto;
        padding: 20px;
        border-radius: 3px;
        background: #fff;
    }

    .close {
        font-family: Arial, Helvetica, sans-serif;
        background: #f26d7d;
        color: #fff;
        line-height: 25px;
        position: absolute;
        right: -12px;
        text-align: center;
        top: -10px;
        width: 34px;
        height: 34px;
        text-decoration: none;
        font-weight: bold;
        -webkit-border-radius: 50%;
        -moz-border-radius: 50%;
        border-radius: 50%;
        -moz-box-shadow: 1px 1px 3px #000;
        -webkit-box-shadow: 1px 1px 3px #000;
        box-shadow: 1px 1px 3px #000;
        padding-top: 5px;
    }

    .close:hover {
        background: #fa3f6f;
    }

    .column-key-super_user {
        display: none;
    }
</style>