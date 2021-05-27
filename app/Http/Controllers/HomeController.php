<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
//using some class model 
use DB;
use App\Teacher;
use App\Course;
use App\CourseUnit;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }  
    //Showing admin page 
	public function admin()
    {
        return view('frontEnd.home.admin');
    } 
    //retrive data from database for showing on student regeister page
	public function courseReg()
    {
        $courses = DB::select('select * from courses');
        return view('frontEnd.home.courseReg',['courses'=>$courses]);	
    }
    //function for creating course by admin
    public function createCourse()
    {
        return view('frontEnd.home.createCourse');
    }
	//admin save courses
	public function saveCourse(Request $request)
    {
		$this->validate($request,[
		]);	
        $course = new Course();
        $course->course_code =$request->course_code;
        $course->course_description =$request->course_description;
		if ($request->hasFile('pic')) {
			$image=$request->file('pic');
			$name=$image->getClientOriginalName();
			$uploadpath='public/images/';
			$image->move($uploadpath,$name);
			$imageurl=$uploadpath.$name;
			
        $course->pic = $imageurl;}
        $course->save();
		//
		return redirect('/admin')->with('message','Teacher info save succesfully');
    }
	//for creating course unit by admin
    public function createCourseUnit()
    {
        return view('frontEnd.home.createCourseUnit');
    }
	//admin save course unit
    public function saveCourseUnit(Request $request)
    {
		$this->validate($request,[
		]);	
        $unit = new CourseUnit();
        $unit->course_code =$request->course_code;
        $unit->course_title =$request->course_title;
        $unit->course_description =$request->course_description;
        if ($request->hasFile('file')) {
			$image=$request->file('file');
			$name=$image->getClientOriginalName();
			$uploadpath='public/files/';
			$image->move($uploadpath,$name);
			$imageurl=$uploadpath.$name;
            $unit->pic = $imageurl;}
        $unit->save();
		//
		return redirect('/admin')->with('message','Teacher info save succesfully');
    }
}
