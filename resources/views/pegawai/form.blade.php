<div class="form-group">
	{!! Form::label('name','Name : ') !!}
	{!! Form::text('name',null,['class'=>'form-control']) !!}
</div>
<div class="form-group">
	{!! Form::label('email','Email : ') !!}
	{!! Form::email('email',null,['class'=>'form-control']) !!}
</div>
<div class="form-group">
	{!! Form::label('job','Job : ') !!}
	{!! Form::text('job',null,['class'=>'form-control']) !!}
</div>
<div class='form-group'>
	{!! Form::submit($submitButtonText, ['class' => 'btn btn-lg btn-success form-control']) !!}
</div>