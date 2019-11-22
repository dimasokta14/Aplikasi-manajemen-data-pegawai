<?php

namespace App\Http\Controllers;

use App\Company;
use App\Employee;
use Illuminate\Http\Request;
use App\Http\Requests\CompanyRequest;
use Illuminate\Support\Facades\Storage;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $companies = Company::withCount('employee')->paginate(5);
        return view('pages.company.table_list', compact('companies'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.company.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CompanyRequest $request)
    {
        
        $input = $request->all();

        if ($request->hasFile('logo')){
            // upload logo
            $logo = $request->file('logo');
            $nama = $request->nama;
            $ext = $logo->getClientOriginalExtension();
            if ($request->file('logo')->isValid()) {
                $nameL = 'logo-'."$nama".".$ext";
                $uploadPath = storage_path('app\company');
                $request->file('logo')->move($uploadPath, $nameL);
                $input['logo'] = $nameL;
            }
            
        }

        $company = Company::create($input);

        return back()->withStatus(__('Data berhasil di tambahkan.'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function show(Company $company)
    {
        // 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function edit(Company $company)
    {
        return view ('pages.company.edit', compact('company'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function update(CompanyRequest $request, Company $company)
    {
        $input = $request->all();
        if ($request->hasFile('logo')){
            // hapus logo lama di directory (storage/app/company)
            $exist = Storage::disk('logo')->exists($company->logo);
            
            if (isset($company->logo) && $exist) {
                $delete = Storage::disk('logo')->delete($company->logo);
            }
            // upload logo baru
            $logo = $request->file('logo');
            $nama = $request->nama;
            $ext = $logo->getClientOriginalExtension();
            if ($request->file('logo')->isValid()) {
                $nameL = 'logo-'."$nama".".$ext";
                $uploadPath = storage_path('app\company');
                $request->file('logo')->move($uploadPath, $nameL);
                $input['logo'] = $nameL;
            }
            
        }

        $company->update($input);

        return back()->withStatus(__('Data berhasil di update.'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function destroy(Company $company)
    {
        $company->delete();
        return back()->withStatus(__('Data berhasil di hapus.'));
    }
}
