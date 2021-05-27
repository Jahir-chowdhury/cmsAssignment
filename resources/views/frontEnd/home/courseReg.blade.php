
@extends('frontEnd.master')
@section('mainContent')
{!! Form::open(['url' => '/','method'=>'POST','enctype'=>'multipart/form-data','class'=>'form-horizontal' ]) !!}
			{{csrf_field()}}
<center>
<h1>Select Courses for registration:</h1>
<table border="1">
<tr>
<td>course code</td>
<td>course description</td>
<td>Thumbnails</td>
<td>Action</td>
</tr>
@foreach ($courses as $course)
<tr>
<td>{{ $course->course_code }}</td>
<td>{{ $course->course_description }}</td>
<td> <img src="{{asset($course->pic)}}" alt="Thumbnails picture"></td>
<td> <input type="checkbox" name="prefer_Course[]" value="Reg"> Reg</td>
</tr>
</center>
@endforeach
</table>
{!! Form::submit('Regeister', ['class' => 'btn btn-primary']) !!}
		{!! Form::close() !!}
@endsection