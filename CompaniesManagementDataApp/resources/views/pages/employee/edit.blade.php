@extends('layouts.app', ['activePage' => 'employee', 'titlePage' => __('Employee Data Management')])

@section('content')
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <form method="post" action="{{ route('employee.update', $employee) }}" autocomplete="off" class="form-horizontal" enctype="multipart/form-data">
            @csrf
            @method('put')

            <div class="card ">
              <div class="card-header card-header-primary">
                <h4 class="card-title">{{ __('Edit Employee') }}</h4>
                <p class="card-category">{{ __('Employee information') }}</p>
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
                      <input class="form-control{{ $errors->has('nama') ? ' is-invalid' : '' }}" name="nama" id="input-nama" type="text" placeholder="{{ __('Nama') }}" value="{{ old('nama', $employee->nama) }}" required="true" aria-required="true"/>
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
                      <input class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" id="input-email" type="email" placeholder="{{ __('Email') }}" value="{{ old('email', $employee->email) }}" required />
                      @if ($errors->has('email'))
                        <span id="email-error" class="error text-danger" for="input-email">{{ $errors->first('email') }}</span>
                      @endif
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Job') }}</label>
                  <div class="col-sm-10">
                    <div class="form-group{{ $errors->has('job_id') ? ' has-danger' : '' }}">
                      <select class="form-control m-b {{ $errors->has('job_id') ? ' is-invalid' : '' }}" name="job_id" id="job-refer">
                        <option selected="" value="">-- Pilih Pekerjaan --</option>
                      </select>
                        @if ($errors->has('job_id'))
                          <span class="error text-danger" for="input-job">{{ $errors->first('job_id') }}</span>
                        @endif
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Company') }}</label>
                  <div class="col-sm-10">
                    <div class="form-group{{ $errors->has('company_id') ? ' has-danger' : '' }}">
                      <select class="form-control m-b {{ $errors->has('company_id') ? ' is-invalid' : '' }}" name="company_id" id="company-refer">
                        <option selected="" value="">-- Pilih Perusahaan --</option>
                      </select>
                        @if ($errors->has('company_id'))
                          <span class="error text-danger" for="input-company">{{ $errors->first('company_id') }}</span>
                        @endif
                    </div>
                  </div>
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
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
  $.ajax({
    url: '/job-data',
    type: 'GET',
    dataType: 'json',
    success:function(json){
      if (!json == false){
        for (i = 0; i < Object.keys(json).length; i++){
          $('#job-refer').append($('<option>').text(json[i].nama_pekerjaan).attr('value', json[i].id));
        }
      } else {
        $('#job-refer').append($('<option>').text('Tidak ada data!').attr('value', null));
      }
    }
  });
  $.ajax({
    url: '/company-data',
    type: 'GET',
    dataType: 'json',
    success:function(json){
      if (!json == false){
        for (i = 0; i < Object.keys(json).length; i++){
          $('#company-refer').append($('<option>').text(json[i].nama).attr('value', json[i].id));
        }
      } else {
        $('#company-refer').append($('<option>').text('Tidak ada data!').attr('value', null));
      }
    }
  });
});
</script>
@push('js')