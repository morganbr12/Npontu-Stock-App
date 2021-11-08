<?php

namespace App\Http\Controllers;

use App\Models\Staff;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $request){
        $fields = $request->validate([
            'name' =>'required|string',
            'email' =>'required|string|unique:staff,email',
            'password' =>'required|string|confirmed',
        ]);

        $staff = Staff::create([
            'name' => $fields['name'],
            'email' => $fields['email'],
            'password' => bcrypt($fields['password'])
        ]);

        $token = $staff->createToken('myapptoken')->plainTextToken;

        $response =[
            'staff'=> $staff,
            'token'=> $token
        ];

        return response($response, 201);
    }
    public function login(Request $request){
        $fields = $request->validate([
            'email' =>'required|string',
            'password' =>'required|string',
        ]);


        //check for email
        $staff = Staff::where('email', $fields['email'])->first();


        //check for password
        if(!user || !Hash::check($fields['password'], $staff->password)){
            return response([
                'message'  => 'wrong credentials, try again !!!'
             ], 401);
        }


        $token = $staff->createToken('myapptoken')->plainTextToken;

        $response =[
            'staff'=> $staff,
            'token'=> $token
        ];

        return response($response, 201);
    }



    public function logout(Request $resquest){
        auth()->user()->tokens()->delete();
        return[
            'message' => 'Logged out'
        ];
    }
}
