<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Cookie;
use App\Notifications\SendEmailNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Notification;

class UserController extends Controller
{
    // GET ALL STUDENT USERS
    public function index()
    {
        return User::with(['leaves'])->get();
    }
    // DELETE STUDENT
    public function destroy($id)
    {
        return User::destroy($id);
    }
    // GET ONLY STUDENT
    public function show($id)
    {
        return User::with('leaves')->findOrfail($id);
    }
    // CREATE THE APPLICATION
    public function store(Request $request)
    {
        $student = new User();
        $student->studentID = $request->studentID;
        $student->firstName = $request->firstName;
        $student->lastName = $request->lastName;
        $student->gender = $request->gender;
        $student->batch = $request->batch;
        $student->email = $request->email;
        $student->phone = $request->phone;
        $student->class = $request->class;
        $student->password = bcrypt($request->password);
        $student->save();
        return response()->json(["message" => $student]);
    }
    // UPDATE APPLICATION
    public function update(Request $request, $id)
    {
        $student = User::find($id);
        $student->studentID = $request->studentID;
        $student->firstName = $request->firstName;
        $student->lastName = $request->lastName;
        $student->gender = $request->gender;
        $student->batch = $request->batch;
        $student->email = $request->email;
        $student->class = $request->class;
        $student->phone = $request->phone;
        $student->password = bcrypt($request->password);
        $student->class = $request->class;
        $student->save();
        return response()->json(["message" => $student]);
    }

    // LOGIN TO APPLICATION
    public function login(Request $request) {
        $user = User::where('email',"$request->email")->first();
        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json(['sms'=>'invalid']);
        }
        $token = $user->createToken('cookie')->plainTextToken;
        $cookie = Cookie('jwt',$token,60*24);
        return response()->json(['token'=>$token, 'user'=>$user])
        ->withCookie($cookie);

    }

    // LOGOUT THE APPLICATION
    public function logout(Request $request) {
        $cookie = Cookie::forget('jwt');
        return response()->json(['sms'=>'logout'])
            ->withCookie($cookie);
    }

    // Store single user
    public function storeSingleEmail(Request $request, $id)
    {
        $admin = User::find($id);

        $details = array();

        $details['greeting'] = $request->greeting;
        $details['body'] = $request->body;
        $details['actiontext'] = $request->actiontext;
        $details['actionurl'] = $request->actionurl;
        $details['endtext'] = $request->endtext;

        Notification::send($admin, new SendEmailNotification($details));

        return [$details];
    }
    // UPDATE IMAGE OF PROFILE
    public function updateImage(Request $request, $id){
        $student = User::find($id);
        {
            $path = public_path('images');
            if ( ! file_exists($path) ) {
                mkdir($path, 0777, true);
            }
            $file = $request->file('image');
            $fileName = uniqid() . '_' . trim($file->getClientOriginalName());
            $file->move($path, $fileName);
            $student->image = asset('images/' . $fileName);
        }
        $student->save();
        return response()->json(["message" => "Image is saved successfully"]);
    }

    // UPDATE PASSWORD STUDENT
    public function updatePassword(Request $request, $id){
        $student = User::find($id);
        $student->password = bcrypt($request->password);
        $student->save();
        return response()->json(["message" => "Password is updated"]);

    }
}
