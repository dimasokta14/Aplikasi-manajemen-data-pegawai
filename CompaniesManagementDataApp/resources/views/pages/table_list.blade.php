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