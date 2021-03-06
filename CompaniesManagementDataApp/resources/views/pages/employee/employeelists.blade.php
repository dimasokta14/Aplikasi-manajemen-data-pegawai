@extends('layouts.app', ['activePage' => 'Employee Data Table', 'titlePage' => __('Employee Table List')])

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
                <a href="{{ route('employee.create') }}" class="btn btn-sm btn-primary">{{ __('Add employee') }}</a>
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
                      <div class="row">
                        <a rel="tooltip" class="btn btn-success btn-link" href="{{ route('employee.edit', $employee) }}" data-original-title="" title="">
                          <i class="material-icons">edit</i>
                          <div class="ripple-container"></div>
                        </a>
                        <form action="{{ route('employee.destroy', $employee) }}" method="post">
                          @csrf
                          @method('delete')
                          <button type="button" class="btn btn-danger btn-link" data-original-title="" title="" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">
                            <i class="material-icons">close</i>
                            <div class="ripple-container"></div>
                          </button>
                        </form>
                      </div>
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