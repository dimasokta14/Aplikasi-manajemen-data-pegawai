<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CompanyRequest extends FormRequest
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
            'email' => 'required|unique:companies,email',
            'website' => 'required',
            'alamat' => 'required',
            'logo' => 'required|mimes:png|dimensions:min_width=100,min_height=200|max:2000',
        ];
    }

    public function messages()
    {
        return [
            'nama.required' => 'Nama perusahaan belum di isi',
            'email.required'  => 'Email perusahaan belum di isi',
            'email.unique'  => 'Email telah digunakan',
            'website.required'  => 'Website perusahaan belum di isi',
            'alamat.required'  => 'Alamat perusahaan belum di isi',
            'logo.required'  => 'Logo belum di upload',
            'logo.mimes'  => 'Ekstensi file harus png',
            'logo.dimensions'  => 'Dimensi file minimal 100px x 100px',
            'logo.max'  => 'Ukuran file maksimal 2Mb',


        ];
    }
}
