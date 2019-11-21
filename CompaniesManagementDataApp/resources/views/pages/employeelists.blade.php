@extends('layouts.app', ['activePage' => 'employee', 'titlePage' => __('Employee Table List')])

@section('content')
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-primary">
            <h4 class="card-title ">Data Karyawan</h4>
            <p class="card-category"> Sistem Management Data Karyawan</p>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-12 text-right">
                <a href="{{ route('user.create') }}" class="btn btn-sm btn-primary">{{ __('Add employee') }}</a>
              </div>
            </div>
            <div class="table-responsive">
              <table class="table">
                <thead class=" text-primary">
                  <th>
                    ID
                  </th>
                  <th>
                    Nama
                  </th>
                  <th>
                    Email
                  </th>
                  <th>
                    Company
                  </th>
                  <th>
                    Job
                  </th>
                  <th>
                    Actions
                  </th>
                </thead>
                <tbody>
                @foreach ($employees as $employee)
                  <tr>
                    <td>
                      {{$employee->id}}
                    </td>
                    <td>
                    {{$employee->nama}}
                    </td>
                    <td>
                    {{$employee->email}}
                    </td>
                    <td>
                    {{$employee->company->nama}}
                    </td>
                    <td>
                    {{$employee->job->nama_pekerjaan}}
                    </td>
                    <td class="td-actions text-right">
                      <form action="{{ route('user.destroy', $employees) }}" method="post">
                        @csrf
                        @method('delete')
                        <button type="button" class="btn btn-danger btn-link" data-original-title="" title="" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">
                          <i class="material-icons">close</i>
                          <div class="ripple-container"></div>
                        </button>
                      </form>
                      <a rel="tooltip" class="btn btn-success btn-link" href="{{ route('profile.edit') }}" data-original-title="" title="">
                        <i class="material-icons">edit</i>
                        <div class="ripple-container"></div>
                      </a>
                    </td>
                  </tr>
                @endforeach
                </tbody>
              </table>
              {{$employees->render()}}
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection