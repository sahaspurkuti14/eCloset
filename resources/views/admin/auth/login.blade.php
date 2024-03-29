@extends('admin.admin_layouts')

@section('admin_content')
    
        <div class="d-flex align-items-center justify-content-center bg-sl-primary ht-100v" style="background-color:#DFFDEA;">
    
      <div class="login-wrapper wd-300 wd-xs-350 pd-25 pd-xs-40 bg-white" style="border: 1px solid grey; padding: 20px; border-radius: 25px; background-color:#D8E4FF; box-shadow: 10px 10px 14px 0px rgba(0,0,0,0.41);">
        <div class="signin-logo tx-center tx-24 tx-bold tx-inverse">eCloset</div>
        <div class="tx-center tx-normal">Admin Panel</div>
        <br>

        <form action="{{ route('admin.login')}}" method="post">
            @csrf
        <div class="form-group">
          <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Email Address">
        </div><!-- form-group -->

            @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror


        <div class="form-group">
          <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">
        
                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror               
                
                
          <a href="{{ route('admin.password.request')}}" class="tx-info tx-12 d-block mg-t-10">Forgot password?</a>
        </div><!-- form-group -->
        <button type="submit" class="btn btn-info btn-block">Sign In</button>
        </form>
       
      </div><!-- login-wrapper -->
    </div><!-- d-flex -->
    
@endsection
