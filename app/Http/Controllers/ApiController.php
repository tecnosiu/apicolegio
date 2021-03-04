<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\Nota;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;


class ApiController extends Controller
{
	    public function getAllStudents() {
	    	$student = Student::all();
	        return $student;
	       
	    }

	    public function createStudent(Request $request) {
		   $validator = Validator::make($request->all(), [
	            'nombre' => 'required|string',
	            'curso' => 'required|string',
	        ]);

	        if ($validator->fails()) {
	            return response()->json($validator->errors()->toArray(), 422);
	        }  
	        else{
	        	$student = new Student;
			    $student->nombre = $request->nombre;
			    $student->curso = $request->curso;
			    $student->save();

			   return response()->json([
			        "message" => "Estudiante Creado"
			    ], 201);
			}
	  }

	    public function getStudent($id) {
	      if(Student::where('id', $id)->exists()) {
	        $student = Student::find($id);

	        return response()->json([
	          "message" => "Estudiante Encontrado"
	        ], 202);
	      } else {
	        return response()->json([
	          "message" => "Estudiante No Encontrado"
	        ], 404);
	      }
	    }
	    

	    public function updateStudent(Request $request, $id) {
	      $student = Student::findOrFail($request->id);

	        $student->nombre = $request->nombre;
	        $student->curso = $request->curso;

	        $student->save();

	        return $student;
	    }

	    public function deleteStudent ($id) {
	      if(Student::where('id', $id)->exists()) {
	        $student = Student::find($id);
	        $student->delete();

	        return response()->json([
	          "message" => "Estudiante Borrado"
	        ], 202);
	      } else {
	        return response()->json([
	          "message" => "Estudiante No Encontrado"
	        ], 404);
	      }
		}
	    public function getAllNotas() {
	    	$nota = Nota::all();
	        return $nota;
	       
	    }

	    public function createNota(Request $request) {
		   $validator = Validator::make($request->all(), [
	            'student_id' => 'required|integer',
	            'grado' => 'required|integer',
	            'seccion' => 'required|string',
	            'asignatura' => 'required|string',
	            'profesor' => 'required|string',
	            'nota' => 'required|integer',
	        ]);

	        if ($validator->fails()) {
	            return response()->json($validator->errors()->toArray(), 422);
	        }  
	        else{
	        	$nota = new Nota;
			    $nota->student_id = $request->student_id;
			    $nota->grado = $request->grado;
			    $nota->seccion = $request->seccion;
			    $nota->asignatura = $request->asignatura;
			    $nota->profesor = $request->profesor;
			    $nota->nota = $request->nota;
			    $nota->save();

			   return response()->json([
			        "message" => "Nota Registrada"
			    ], 201);
			}
	  }

	   public function updateNota(Request $request) {
	   		$nota = Nota::findOrFail($request->id);

	        $nota->nota = $request->nota;
	        
	        $nota->save();

	       return response()->json([
			        "message" => "Nota Actualizada"
			    ], 201);
		}

		public function deleteNota ($id) {
	      if(Nota::where('id', $id)->exists()) {
	        $nota = Nota::find($id);
	        $nota->delete();

	        return response()->json([
	          "message" => "Nota Borrada"
	        ], 202);
	      } else {
	        return response()->json([
	          "message" => "Nota No Encontrada"
	        ], 404);
	      }
		}

		
		public function index($student_id)
		{
			if(Student::where('id', $student_id)->exists()){
        		$student = Student::join("notas","students.id","=","notas.student_id")->where("notas.student_id","=",$student_id)->get()->toJson(JSON_PRETTY_PRINT);
        		return response($student, 200);
			}
			else{
				return "Estudiante No Encontrado";
			}
			
	  }
	
}

