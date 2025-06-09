@extends('layouts.layout')
@section('title', 'Редактирование')
@section('content')
    <div class="head-h">
        <h2>Редактирование материала: {{$material->name}}</h2>
        <a class="show" href="{{ route('materials.show', $material->id) }}">--> Просмотреть список продукции, в производстве которой используется материал <--</a>
    </div>

    <form action="{{ route('materials.update', $material->id)}}" method="post" enctype="application/x-www-form-urlencoded">
        @csrf
        @method('PUT')
        <div class="form">
            <div class="form-block">
                <label>Название:</label>
                <input type="text" name="name" placeholder="Название" value="{{$material->name}}">
            </div>
            <div class="form-block">
                <label>Тип:</label>
                <select name="material_type_id" required>
                    @foreach($materialTypes as $m_type)
                        <option value="{{$m_type->id}}">{{$m_type->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-block">
                <label>Единица измерения:</label>
                <select name="unit_id" required>
                    @foreach($units as $u_type)
                        <option value="{{$u_type->id}}">{{$u_type->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-block">
                <label for="price">Цена</label>
                <input type="number" step="0.1" min="1" name="price" value="{{$material->price}}">
            </div>
            <div class="form-block">
                <label for="warehouse">Кол-во на складе</label>
                <input type="number" step="0.1" min="1" name="warehouse" value="{{$material->warehouse}}">
            </div>
            <div class="form-block">
                <label for="minimum">Минимальное кол-во</label>
                <input type="number" step="0.1" min="1" name="minimum" value="{{$material->minimum}}">
            </div>
            <div class="form-block">
                <label for="packaging">Кол-во в упаковке</label>
                <input type="number" step="0.1" min="1" name="packaging" value="{{$material->packaging}}">
            </div>
            <div class="form-block"></div>
        </div>
        @if($errors->any())
            <div>
                <ul>
                    @foreach($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <div class="create-btn">
            <button class="btn" type="submit">Изменить</button>
        </div>
    </form>
    <div class="back">
        <a class="btn back"  href="{{route('materials.index')}}"><-- Назад к списку</a>
    </div>
@endsection
