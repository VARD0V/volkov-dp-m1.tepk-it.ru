@extends('layouts.layout')
@section('title', 'Список продукции')
@section('content')
    <div class="head-h">
        <h2>"{{ $material->name }}"</h2>
    </div>
    <div class="external center">
            <div class="table-show">
                <div class="table-show-1">
                    <span>Название продукции:</span>
                </div>
                <div>
                    <span>Кол-во материала на продукцию:</span>
                </div>
            </div>
    </div>

    <div class="external center">
        @foreach($products as $item)
            <div class="table-show">
                <div class="table-show-1">
                    <span>{{ $item['name'] }}</span>
                </div>
                <div>
                    <span>{{ $item['quantity'] }} ед. материала</span>
                </div>
            </div>
        @endforeach
    </div>
    <div class="back">
        <a class="btn" href="{{ route('materials.index') }}"><-- Назад к списку</a>
    </div>
@endsection
