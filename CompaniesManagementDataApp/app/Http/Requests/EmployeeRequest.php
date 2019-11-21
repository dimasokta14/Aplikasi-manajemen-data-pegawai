<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EmployeeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'nama' => 'required|string',
            'email' => 'required|unique:employees,email',
            'company_id' => 'required',
            'job_id' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'nama.required' => 'Nama belum di isi',
            'email.required'  => 'Email belum di isi',
            'company_id.required'  => 'Pilih salah satu',
            'job_id.required'  => 'Pilih salah satu',
            'email.unique'  => 'Email telah digunakan',
        ];
    }
}
