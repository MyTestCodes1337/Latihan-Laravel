@extends('layout')

@section('content')
<style>
  .uper {
    margin-top: 40px;
  }
</style>
<div class="card uper">
  <div class="card-header">
    <h3>Tambah Pegawai</h3>
  </div>
  <div class="card-body">
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div><br />
    @endif
      {!! Form::open(['action'=>'pegawaiController@store']) !!}
      @include('admin.pegawai.form',['submitButtonText'=>'Add Data'])
      {!! Form::close() !!}
  </div>
</div>
@endsection