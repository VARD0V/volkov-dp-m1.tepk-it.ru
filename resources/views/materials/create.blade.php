@extends('layouts.layout')
@section('title', 'Создание материала')
@section('content')
    <div class="head-h">
        <h2>Создание материала</h2>
    </div>
    <form action="{{ route('materials.store')}}" method="post" enctype="application/x-www-form-urlencoded">
        @csrf
        <div class="form">
            <div class="form-block">
                <label>Название:</label>
                <input type="text" name="name" placeholder="Название" required>
            </div>
            <div class="form-block">
                <label>Тип:</label>
                <select name="material_type_id" required>
                    @foreach($material_types as $type)
                        <option value="{{$type->id}}">{{$type->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-block">
                <label>Единица измерения:</label>
                <select name="unit_id" required>
                    @foreach($units as $unit)
                        <option value="{{$unit->id}}">{{$unit->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-block">
                <label for="price">Цена</label>
                <input type="number" step="0.1" min="1" name="price" placeholder="123">
            </div>
            <div class="form-block">
                <label for="warehouse">Кол-во на складе</label>
                <input type="number" step="0.1" min="1" name="warehouse" placeholder="123">
            </div>
            <div class="form-block">
                <label for="minimum">Минимальное кол-во</label>
                <input type="number" step="0.1" min="1" name="minimum" placeholder="123">
            </div>
            <div class="form-block">
                <label for="packaging">Кол-во в упаковке</label>
                <input type="number" step="0.1" min="1" name="packaging" placeholder="123">
            </div>
        </div>
        @if($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <div class="create-btn">
            <button class="btn" type="submit">Создать</button>
        </div>
    </form>
    <div class="back">
        <a class="btn back" href="{{route('materials.index')}}"><-- Назад к списку</a>
    </div>
@endsection
