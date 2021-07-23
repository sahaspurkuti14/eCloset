<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class FrontController extends Controller
{
    public function OrderTraking(Request $request){
        $code = $request->code;
      
        $track = DB::table('orders')->where('status_code',$code)->first();
        if ($track) {
          
          // echo "<pre>";
          // print_r($track);
          return view('pages.tracking',compact('track'));
      
        }else{
          $notification=array(
                  'messege'=>'Status Code Invalid',
                  'alert-type'=>'error'
                   );
                 return Redirect()->back()->with($notification);
      
        }
    }
}

