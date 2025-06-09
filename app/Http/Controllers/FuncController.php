<?php

namespace App\Http\Controllers;

use App\Models\MaterialType;
use App\Models\ProductType;
class FuncController extends Controller
{
    public function method4module(int $product_type_id, int $material_type_id, int $quantity, float $p1, float $p2): int
    {
        try {
            //проверка значений
            if ($quantity <= 0 || $p1 <= 0 || $p2 <= 0) {
                return -1;
            }
            //получаем тип продукции и тип материала, через if , при не удаче возвращает "-1" по требованию задания
            $productType = ProductType::find($product_type_id);
            if (!$productType) {
                return -1;
            }
            $materialType = MaterialType::find($material_type_id);
            if (!$materialType) {
                return -1;
            }
            //обозначаем коэффициент использования материала на единицу продукции
            $coefficient = $productType->coefficient;
            //обозначаем процент потерь
            $loss = $materialType->defective;
            //расчёт объёма материала на единицу продукции
            $material_per_unit = $p1 * $p2 * $coefficient;
            //проверка значения
            if ($material_per_unit <= 0) {
                return -1;
            }
            //эффективное количество сырья после потерь
            $effective_material = $quantity * (1 - $loss);
            //итоговое кол-во
            return (int) floor($effective_material / $material_per_unit);
        } catch (\Exception $e) {
            return -1;
        }
    }
}

