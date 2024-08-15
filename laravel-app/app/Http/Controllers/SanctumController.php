<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class SanctumController extends Controller
{
    public function register(Request $request)
    {
        $data = $request->validate([
            'name' => 'required',
            'email' => 'required|email:unique',
            'password' => 'required',
			'confirmPassword' => 'required'
        ]);
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password'])
        ]);
        $token = $user->createToken('main')->plainTextToken;
        return response()->json([
            'user' => $user,
            'token' => $token,
			'msg' => "you are register.",
            'type' => true,
            'status' => 200
        ]);
    }

    public function login(Request $request)
    {
        $data = $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);
        if (!auth()->attempt($data)) {
            return response()->json([
                'msg' => 'Provided credentials are not correct'
            ], 422);
        }
        $user = User::where('email', $data['email'])->first();
        $token = $user->createToken('main')->plainTextToken;
        return response()->json([
            'user' => $user,
            'token' => $token,
            'type' => true,
			'msg' => "you are login.",
            'status' => 200
        ]);
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();
        return response()->json([
            'msg' => "logout",
            'type' => false,
            'status' => 200
        ]);
    }
	public function profilePhoto(Request $request, $id)
    {
		$user = User::find($id);
		if ($request->hasFile('image')) {
            $imageName = time() . '.' . $request->image->extension();
            $request->image->storeAs('public/img', $imageName);
            $imageUrl = "img/" . $imageName;
        }
        $user->image = $imageUrl;
		$user->save();
		return response()->json([
            'image' => $imageUrl,
            'msg' => "image upload",
            'status' => 200
        ]);
	}
}
