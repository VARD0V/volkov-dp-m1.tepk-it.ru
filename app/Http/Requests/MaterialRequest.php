<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MaterialRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'name' => 'required|string|max:255',
            'material_type_id' => 'required|integer|exists:material_types,id',
            'unit_id' => 'required|integer|exists:units,id',
            'price' => 'required|numeric|min:0',
            'warehouse' => 'required|numeric|min:0',
            'minimum' => 'required|numeric|min:0',
            'packaging' => 'required|numeric|min:0',
        ];

    }
}
