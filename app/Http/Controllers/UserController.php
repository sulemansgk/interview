<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use DataTables;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = User::select('*');
            return Datatables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){

                           $btn = '<a class="edit btn btn-primary btn-sm showData" data-id='.$row->id.'>View</a>';

                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }

        return view('users');
    }


    public function details(Request $request){

        $user = User::where('id',$request->id)->with('hasRole','hasDepartment','hasUserMeta')->first()->toArray();

        return response()->json(['user'=>$user]);
    }
}
