@extends('view_test.layout.main')
@section('content')
    <p>这是子测试模块!</p>
@endsection

@section('section-text')
    @parent
    <p>这是子section-text!</p>
@endsection