<?php
namespace App\Http\Controllers;
use App\Http\Requests\MaterialRequest;
use App\Models\Material;
use App\Models\MaterialType;
use App\Models\Unit;

class MaterialController extends Controller
{
    public function index()
    {
        // Получаем все материалы
        $materials = Material::all();
        // Суммируем всю продукции
        foreach ($materials as $material) {
            $material->quantity = $material->product->sum('quantity');
        }
        return view('materials.index', compact('materials'));

    }
    public function create()
    {
        // Получаем все типы партнеров и ед. измерения для выпадающих списков
        $material_types = MaterialType::all();
        $units = Unit::all();
        return view('materials.create', compact('material_types', 'units'));
    }
    public function store(MaterialRequest $request)
    {
        // Создаем материал с валидированными данными
        $material = Material::create($request->validated());
        return redirect()->route('materials.index');
    }
    public function edit(Material $material)
    {
        // Получаем все типы партнеров и ед. измерения для выпадающих списков
        $materialTypes = MaterialType::all();
        $units = Unit::all();
        return view('materials.edit', compact('material','materialTypes', 'units',));
    }
    public function update(MaterialRequest $request, Material $material)
    {
        // Обновляем данные партнера
        $material->update($request->validated());
        return redirect()->route('materials.edit', $material->id);
    }
    public function show($id){
        // Получаем все материалы с продукцией, в которой участвует материал
        $material = Material::with('product.product')->findOrFail($id);
        // Формируем список продукции с названием, и количеством материала
        $products = $material->product->map(function ($materialProduct) {
            return [
                'name' => $materialProduct->product->name,
                'quantity' => $materialProduct->quantity,
            ];
        });
        return view('materials.show', compact('material', 'products'));
    }
}
