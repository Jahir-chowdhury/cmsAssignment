@extends('frontEnd.master')

@section('mainContent')
    <div class="container">
        <div class="full-reg-area">
		{!! Form::open(['url' => '/saveCourse','method'=>'POST','enctype'=>'multipart/form-data','class'=>'form-horizontal' ]) !!}
			{{csrf_field()}}
			<div class="form-group">
            <div class="reg-area-1">
                <div class="reg-header">
                    <h3>Create Course </h3>
                </div>
                    <div class="course_code">
                    course_code:<br>
                        <input  type="text" class="form-control{{ $errors->has('course_code') ? ' is-invalid' : '' }}" name="course_code" value="{{ old('course_code') }}" required autofocus>

                            @if ($errors->has('course_code'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('course_code') }}</strong>
                                </span>
                            @endif
				    </div>	
                    <div class="course_description">
                    course_description:<br>
                        <input  type="text" class="form-control{{ $errors->has('course_description') ? ' is-invalid' : '' }}" name="course_description" value="{{ old('course_description') }}" required autofocus>

                            @if ($errors->has('course_description'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('course_description') }}</strong>
                                </span>
                            @endif
				    </div>		
                    <div class="course_thumbnails">
                    course_thumbnails:<br>
                        <input  type="text" class="form-control{{ $errors->has('course_thumbnails') ? ' is-invalid' : '' }}" name="course_thumbnails" value="{{ old('course_thumbnails') }}" required autofocus>

                            @if ($errors->has('course_thumbnails'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('course_thumbnails') }}</strong>
                                </span>
                            @endif
				    </div>		
		{!! Form::submit('Save info', ['class' => 'btn btn-primary']) !!}
		{!! Form::close() !!}

        </div>
    </div> 

@endsection
