<?php

namespace App\Http\Controllers;
use App\Company;
use App\Employee;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        $totalC = Company::count();
        $totalE = Employee::count();
        $data = [
            't_employee' => $totalE,
            't_company' => $totalC,
        ];
        $employees = Employee::with('company', 'job')->take(5)->get();
        return view('dashboard', compact('data', 'employees'));
    }
}
