@extends('layout')

@section('content')
<style>
    .uper {
        margin-top: 40px;
    }

</style>
<h3>Daftar Pegawai</h3>
<div class="uper">
    
    <div class="card card-success">
        <div class="card-header">
            {{ Form::open([null,null,"onSubmit"=>"return false;",'id'=>'filters','class'=>'form']) }}
                <div class="row">
                    <div class="col-md-1 col-xs-12">
                        <a href="{{ URL::route('pegawai.create') }}" class="btn btn-success btn-block" style="margin: 2px 0">Create</a>
                    </div>
                    <div class="col-md-4 col-xs-8">
                            {{ Form::text('search',null,['id'=>'search','class'=>'form-control','placeholder'=>'Search ...']) }}
                    </div>
                    <div class="col-md-2 col-xs-4">
                            {{ Form::select('perPage',[null=>'Data Page','5'=>'5 Data','10'=>'10 Data','20'=>'20 Data','30'=>'30 Data'],null,['class'=>'form-control']) }}
                    </div>
                    <div class="col-md-2">
                            {{ Form::select('status',[null=>'status','active'=>'Active','non-active'=>'Non-Active'],null,['class'=>'form-control']) }}
                    </div>
                    <div class="col-md-2">
                            {{ Form::select('sortBy',[null=>'Sort By','ASC'=>'ASC','DESC'=>'DESC'],null,['class'=>'form-control']) }}
                    </div>
                </div>
            {{ Form::close() }}
        </div>
        <div class="card-body">
            <div id="content">
                @if(session()->get('success'))
                    <div class="alert alert-success" style="margin:2px">
                        {{ session()->get('success') }}
                    </div><br />
                @endif
                <table class="table table-striped table-bordered w-100 d-block d-md-table justify-content-center">
                    <thead>
                        <tr>
                            <td>No</td>
                            <td>Nama</td>
                            <td>Email</td>
                            <td>Pekerjaan</td>
                            <td>Status</td>
                            <td>Dibuat</td>
                            <td>Diupdate</td>
                            <td colspan="3" style="text-align:center">Action</td>
                        </tr>
                    </thead>
                    <tbody>
                        @if (count($pegawais) > 0)
                            @if (isset($_GET['page']) and $_GET['page'] != null)
                                @if(isset($_GET['perPage']) and $_GET['perPage'] != null)
                                    @php ($no=1+(($_GET['page']-1)*$_GET['perPage']))
                                @else
                                    @php ($no=1+(($_GET['page']-1)*20))
                                @endif
                            @else
                                @php ($no=1)
                            @endif
    
                            @foreach($pegawais as $pegawai)
                            <tr>
                                <td>{{$no}}</td>
                                <td>{{$pegawai->name}}</td>
                                <td>{{$pegawai->email}}</td>
                                <td>{{$pegawai->job}}</td>
                                <td>@if ($pegawai->status == 1)
                                    Active
                                    @else
                                    Non-Active
                                    @endif</td>
                                <td>{{$pegawai->created_at}}</td>
                                <td>{{ $pegawai->updated_at }}</td>
                                <td><a href="{{ route('pegawai.edit',$pegawai->id)}}" class="btn btn-primary btn-block">Edit</a></td>
                                <td style="text-align:center"><!-- Default switch -->
                                    <form class="btn-group btn-group-toggle" data-toggle="buttons">
                                        <label class="btn {!!  ($pegawai->status == 1) ? 'btn-primary active':'btn-danger' !!}">
                                            <input type="radio" value="active" name="options" id="status-active" autocomplete="off" {!!  ($pegawai->status == 1) ? "checked":"onclick=\"statusChange(this,".$pegawai->id.")\"" !!}> Active
                                        </label>
                                        <label class="btn {!!  ($pegawai->status == 0) ? 'btn-primary active':'btn-danger' !!}">
                                            <input type="radio" value="non-active" name="options" id="active-nonactive" autocomplete="off" {!!  ($pegawai->status == 0) ? "checked":"onclick=\"statusChange(this,".$pegawai->id.")\"" !!}> NonActive
                                        </label>
                                    </form>
                                </td>
                                <td>
                                    <form action="{{ route('pegawai.destroy', $pegawai->id)}}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger btn-block" type="submit">Delete</button>
                                    </form>
                                </td>
                            </tr>
                            @php ($no++)
                            @endforeach
                        @else
                            <tr>
                                <td colspan="9" style="text-align:center">Data Tidak Ada</td>
                            </tr>
                        @endif
                    </tbody>
                </table>
                {{-- {{ $pegawais->links() }} --}}
                {{ $pegawais->links('admin.pagination.ajax-page') }}
            </div>
        </div>
    </div>
</div>
@endsection
