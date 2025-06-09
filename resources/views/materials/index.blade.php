@extends('layouts.layout')
@section('title', 'Материалы')
@section('content')
    <div class="nav">
        <a class="btn" href="{{route('materials.create')}}">Создать материал</a>
        <a class="btn" href="{{ route('home') }}"><-- Назад на главную</a>
    </div>
    <div class="external border">
        @foreach ($materials as $material)
            <div class="internal border">
                <div class="internal-in">
                    <a href="{{ route('materials.edit', $material->id) }}">
                        <h2 class="internal-in-h"> {{ $material->materialType->name }} | {{$material->name}}</h2>
                    </a>
                    <div>Минимальное количество на складе: {{ $material->minimum}}</div>
                    <div>Количество на складе: {{ $material->warehouse}}</div>
                    <div>Цена: {{$material->price}} {{$material->unit->name}} | {{$material->packaging}} шт.</div>
                </div>
                <div>
                    <h2>{{ number_format($material->quantity, 2, '.', ' ') }}</h2>
                </div>
            </div>
        @endforeach
    </div>
@endsection
