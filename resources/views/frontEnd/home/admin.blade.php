@extends('frontEnd.master')
@section('mainContent')
    <div class="container-fluid">
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-sm-6 col-xs-12">
                        <div class="row">
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="tutor">
                                    
                                    <div class="tutor-button">
                                        <a href="{{url('/createCourse')}}"><p>Create Course </p></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="student">
                                    
                                    <div class="student-button">
                                        <a href="{{url('/createCourseUnit')}}"><p>Create Course Unit</p></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

	@endsection