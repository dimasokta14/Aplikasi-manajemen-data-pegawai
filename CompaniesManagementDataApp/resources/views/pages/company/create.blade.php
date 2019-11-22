@extends('layouts.app', ['activePage' => 'company', 'titlePage' => __('Company Data Management')])

@section('content')
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <form method="post" action="{{ route('company.store') }}" autocomplete="off" class="form-horizontal" enctype= "multipart/form-data">
          @csrf
            <div class="card ">
              <div class="card-header card-header-primary">
                <h4 class="card-title">{{ __('Add New Company Data') }}</h4>
                <p class="card-category">{{ __('Company information') }}</p>
              </div>
              <div class="card-body ">
                @if (session('status'))
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                          <i class="material-icons">close</i>
                        </button>
                        <span>{{ session('status') }}</span>
                      </div>
                    </div>
                  </div>
                @endif
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Nama') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('nama') ? ' has-danger' : '' }}">
                      <input class="form-control{{ $errors->has('nama') ? ' is-invalid' : '' }}" name="nama" id="input-nama" type="text" placeholder="{{ __('Nama Perusahaan') }}" aria-required="true"/>
                      @if ($errors->has('nama'))
                        <span id="name-error" class="error text-danger" for="input-name">{{ $errors->first('nama') }}</span>
                      @endif
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Email') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('email') ? ' has-danger' : '' }}">
                      <input class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" id="input-email" type="email" placeholder="{{ __('Email Perusahaan') }}"/>
                      @if ($errors->has('email'))
                        <span id="email-error" class="error text-danger" for="input-email">{{ $errors->first('email') }}</span>
                      @endif
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Alamat') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('alamat') ? ' has-danger' : '' }}">
                      <input class="form-control{{ $errors->has('alamat') ? ' is-invalid' : '' }}" name="alamat" id="input-alamat" type="text" placeholder="{{ __('Alamat Perusahaan') }}" />
                      @if ($errors->has('alamat'))
                        <span id="alamat-error" class="error text-danger" for="input-alamat">{{ $errors->first('alamat') }}</span>
                      @endif
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Website') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('website') ? ' has-danger' : '' }}">
                      <input class="form-control{{ $errors->has('website Resmi') ? ' is-invalid' : '' }}" name="website" id="input-website" type="text" placeholder="{{ __('Website') }}"/>
                      @if ($errors->has('website'))
                        <span id="website-error" class="error text-danger" for="input-website">{{ $errors->first('website') }}</span>
                      @endif
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Logo perusahaan') }}</label>
                  <input class="{{ $errors->has('logo') ? ' is-invalid' : '' }}" type="file" name="logo" />
                  @if ($errors->has('logo'))
                        <span id="logo-error" class="error text-danger" for="input-logo">{{ $errors->first('logo') }}</span>
                  @endif
                </div>
              </div>
              <div class="card-footer ml-auto mr-auto">
                <button type="submit" class="btn btn-primary">{{ __('Save') }}</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
@endsection