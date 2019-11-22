@extends('layouts.app', ['activePage' => 'table', 'titlePage' => __('Company List')])

@section('content')
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-primary">
            <h4 class="card-title ">Data Perushaan</h4>
            <p class="card-category"> Sistem Management Data Perushaan</p>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-12 text-right">
                <a href="{{ route('company.create') }}" class="btn btn-sm btn-primary">{{ __('Add Company') }}</a>
              </div>
            </div>
            @if (session('status'))
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="alert alert-danger">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                          <i class="material-icons">close</i>
                        </button>
                        <span>{{ session('status') }}</span>
                      </div>
                    </div>
                  </div>
            @endif
            <div class="table-responsive">
              <table class="table">
                <thead class=" text-primary">
                  <th>
                    ID
                  </th>
                  <th>
                    Nama Perusahaan
                  </th>
                  <th>
                    Alamat
                  </th>
                  <th>
                    Email
                  </th>
                  <th>
                    Website
                  </th>
                  <th>
                    Jumlah Pegawai
                  </th>
                  <th>
                    Actions
                  </th>
                </thead>
                <tbody>
                @foreach ($companies as $company)
                  <tr>
                    <td>
                      {{$company->id}}
                    </td>
                    <td>
                      {{$company->nama}}
                    </td>
                    <td>
                      {{$company->alamat}}
                    </td>
                    <td class="text-primary">
                      {{$company->email}}
                    </td>
                    <td class="text-primary">
                      {{$company->website}}
                    </td>
                    <td>
                      {{$company->employee_count}}
                    </td>
                    <td class="td-actions text-right">
                      <form action="{{ route('company.destroy', $company) }}" method="post">
                                  @csrf
                                  @method('delete')
                              
                                  <a rel="tooltip" class="btn btn-success btn-link" href="{{ route('company.edit', $company) }}" data-original-title="" title="">
                                    <i class="material-icons">edit</i>
                                    <div class="ripple-container"></div>
                                  </a>
                                  <button type="button" class="btn btn-danger btn-link" data-original-title="" title="" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">
                                      <i class="material-icons">close</i>
                                      <div class="ripple-container"></div>
                                  </button>
                      </form>
                    </td>
                  </tr>
                  @endforeach
                </tbody>
              </table>
              {{$companies->render()}}
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection