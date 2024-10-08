<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return response()->json([
            'products' => Product::all(),
            'success' => true,
            'message' => 'Products retrieved successfully',
            'status' => 200
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'required',
            'description' => 'required',
            'price' => 'required'
        ]);
        $product = Product::create([
            'name' => $data['name'],
            'description' => $data['description'],
            'price' => $data['price']
        ]);
        return response()->json([
            'product' => $product,
            'success' => true,
            'msg' => 'Product created successfully',
            'status' => 200
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return response()->json([
            'product' => Product::find($id),
            'success' => true,
            'message' => 'Product retrieved successfully',
            'status' => 200
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        //
    }
}
