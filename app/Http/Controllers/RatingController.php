<?php

namespace App\Http\Controllers;

use App\Models\rating;
use App\Models\User;
use App\Models\food;
use Illuminate\Http\Request;

class RatingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $ratings = Rating::where('food_id','=',$id)->paginate(5);
        return view('ratings.index',compact('ratings'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $users = User::get();
        $foods = Food::get();
        return view('ratings.create', compact('users','foods'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'user_id' => 'required',
            'food_id' => 'required',
            'rating' => 'required',
            'comment' => 'required',
        ]);
 
        $rating = new Rating();
        $rating->user_id = $request->user_id;
        $rating->food_id = $request->food_id;
        $rating->rating = $request->rating;
        $rating->comment = $request->comment;
        if ($rating->save()) {
            return redirect()->route('ratings.index',$request->food_id)
                        ->with('success','Review berhasil ditambahkan');
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Post not added'
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\rating  $rating
     * @return \Illuminate\Http\Response
     */
    public function show(rating $rating)
    {
        return view('ratings.show',compact('rating'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\rating  $rating
     * @return \Illuminate\Http\Response
     */
    public function edit(rating $rating)
    {
        return view('ratings.edit',compact('rating'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\rating  $rating
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, rating $rating)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\rating  $rating
     * @return \Illuminate\Http\Response
     */
    public function destroy(rating $rating)
    {
        //
    }
    public function list(Request $request)
    {
        $rat = Rating::where('food_id','=',$request->food_id)->get();
        return response()->json($rat, 200);
    }
    public function storeApp(Request $request)
    {
        $request->validate([
            'user_id' => 'required',
            'food_id' => 'required',
            'comment' => 'required',
            'rating' => 'required'
            
        ]);
        $rating = new Rating();
        $rating->user_id =$request->user_id;
        $rating->food_id =$request->food_id;
        $rating->comment =$request->comment;
        $rating->rating =$request->rating;
        if ($rating->save()) {
            return response()->json(['success' => true]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Post not added'
            ], 500);
        }
    }
}
