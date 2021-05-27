@extends('frontEnd.master')

@section('mainContent')
    <div class="container">
        <div class="full-reg-area">
		{!! Form::open(['url' => '/saveCourseUnit','method'=>'POST','enctype'=>'multipart/form-data','class'=>'form-horizontal' ]) !!}
			{{csrf_field()}}
			<div class="form-group">
            <div class="reg-area-1">
                <div class="reg-header">
                    <h3>Create Course Unit </h3>
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
                    <div class="course_title">
                    course_title:<br>
                        <input  type="text" class="form-control{{ $errors->has('course_title') ? ' is-invalid' : '' }}" name="course_title" value="{{ old('course_title') }}" required autofocus>

                            @if ($errors->has('course_title'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('course_title') }}</strong>
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
                    <div class="reg-area-7">
                        <div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <p>Choose File: </p>
                                    <input type="file" name="file" accept=".pdf,.docx/*">
                            </div>
                        </div>
                    </div>
            </div>
		{!! Form::submit('Save info', ['class' => 'btn btn-primary']) !!}
		{!! Form::close() !!}

        </div>
    </div> 

@endsection
