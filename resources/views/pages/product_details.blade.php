@extends('layouts.app')

@section('content')
@include('layouts.menubar')

<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/product_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/product_responsive.css') }}">

<!-- Single Product -->

	<div class="single_product">
		<div class="container">
			<div class="row">

				<!-- Images -->
				<div class="col-lg-2 order-lg-1 order-2">
					<ul class="image_list">
						<li data-image="{{ asset( $product->image_one ) }}"><img src="{{ asset( $product->image_one ) }}" alt=""></li>
						<li data-image="{{ asset( $product->image_two ) }}"><img src="{{ asset( $product->image_two ) }}" alt=""></li>
						<li data-image="{{ asset( $product->image_three ) }}"><img src="{{ asset( $product->image_three ) }}" alt=""></li>
					</ul>
				</div>

				<!-- Selected Image -->
				<div class="col-lg-5 order-lg-2 order-1">
					<div class="image_selected"><img src="{{ asset( $product->image_one ) }}" alt=""></div>
				</div>

				<!-- Description -->
				<div class="col-lg-5 order-3">
					<div class="product_description">
						<div class="product_category">{{ $product->category_name }} > {{ $product->subcategory_name }}</div>
						<div class="product_name">{{ $product->product_name }}</div>
						<div class="rating_r rating_r_4 product_rating"><i></i><i></i><i></i><i></i><i></i></div>
						<div class="product_text"><p> 
                      {!!  str_limit($product->product_details, $limit = 600 )  !!}
						</p></div>
						<div class="order_info d-flex flex-row">

		 <form action="{{ url('cart/product/add/'.$product->id) }}" method="post">
		 	@csrf
				
          <div class="row">
          	<div class="col-lg-4">
          	<div class="form-group">
          		<label for="exampleFormControlSelect1">Color</label>
          		<select class="form-control input-lg" id="exampleFormControlSelect1" name="color"> @foreach($product_color as $color)
          			<option value="{{ $color }}">{{ $color }}</option>
          			
                 @endforeach
          		</select>          		
          	</div> 
          	</div> 


@if($product->product_size == NULL)

@else
<div class="col-lg-4">
          	<div class="form-group">
          		<label for="exampleFormControlSelect1">Size</label>
          		<select class="form-control input-lg" id="exampleFormControlSelect1" name="size"> 
          			 @foreach($product_size as $size)
          			<option value="{{ $size }}">{{ $size }}</option>
          	 
          			 @endforeach

          		</select>          		
          	</div> 
          	</div> 

          	@endif       


          	<div class="col-lg-4">
          	<div class="form-group">
          		<label for="exampleFormControlSelect1">Quantity</label>
          		 <input class="form-control" type="number" value="1" pattern="[0-9]" name="qty">	
          	</div> 
          	</div>   
          </div>
		</div>

								 
 @if($product->discount_price == NULL)
<div class="product_price">Rs.{{ $product->selling_price }}<span> </div>
      @else
<div class="product_price">Rs.{{ $product->discount_price }}<span>Rs.{{ $product->selling_price }}</span></div>
      @endif


								<div class="button_container">
									<button type="submit" class="button cart_button">Add to Cart</button>
									<div class="product_fav"><i class="fas fa-heart"></i></div>
								</div>

<br><br>               
                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_inline_share_toolbox"></div>
                       				
								
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Product Details -->

	<div class="viewed">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="viewed_title_container">
						<h3 class="viewed_title">Product Details</h3>
					</div>

					<ul class="nav nav-tabs" id="myTab" role="tablist">
  						<li class="nav-item">
    						<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Product Details</a>
  						</li>
  
  						<li class="nav-item">
    						<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Product Review</a>
  						</li>

  						<li class="nav-item">
    						<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Video Link</a>
  						</li>
   
					</ul>

					<div class="tab-content" id="myTabContent">
  						<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
  							<br>{!! $product->product_details !!}
						</div>

					<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab"><br>
						<div class="fb-comments" data-href="{{ Request::url() }}" data-width="" data-numposts="10"></div>
  					</div>

  					<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
  						<br>{{ $product->video_link }}</div>
  
					</div>

					 
				</div>
			</div>
		</div>
	</div>


<!-- Recommendation -->

    <div class="Recommended" style="margin-top:5%;margin-bottom:5%;">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="viewed_title_container">
                        <h3 class="viewed_title">Recommended for you</h3>
                        <div class="viewed_nav_container">
                            <div class="viewed_nav viewed_prev"><i class="fas fa-chevron-left"></i></div>
                            <div class="viewed_nav viewed_next"><i class="fas fa-chevron-right"></i></div>
                        </div>
                    </div>                   

                    <!-- Recommended Slider -->

                    <div class="owl-carousel owl-theme viewed_slider"> 

						@foreach($relatedProducts as $row)
        				<!-- Recommended Item -->
            			<div class="recommended_item">
                			<div class="border_active"></div>
                    		<div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center" style="padding:5%">
								<div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="{{ asset( $row->image_one )}}" alt="" style="height: 120px; width: 100px;"></div>
								<div class="product_content">

									@if($row->discount_price == NULL)
									<div class="product_price discount">Rs.{{ $row->selling_price }}<span> </div>
									@else
									<div class="product_price discount">Rs.{{ $row->discount_price }}<span>Rs.{{ $row->selling_price }}</span></div>
									@endif

									<div class="product_name">
										<div><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{ $row->product_name }}</a></div>
									</div>

									<div>                          
										<button type="button" class="btn btn-primary addcart" id="{{ $row->id }}" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)">Add to Cart</button>
									</div>
								</div>

								<button class="addwishlist" data-id="{{ $row->id }}" >
                    				<div class="product_fav"><i class="fas fa-heart"></i></div>
                				</button>
								

								<ul class="product_marks">
									@if($row->discount_price == NULL)
									<li class="product_mark product_discount" style="background: blue;">New</li>
									@else
									<li class="product_mark product_discount">
										@php
										$amount = $row->selling_price - $row->discount_price;
										$discount = $amount/$row->selling_price*100;
										@endphp
										{{ intval($discount) }}%

									</li> 
									@endif
								</ul>
                			</div>
            			</div>
                		@endforeach
					</div>	
            	</div>
            </div>
        </div>  
    </div>




<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v11.0&appId=830937081195070&autoLogAppEvents=1" nonce="2ew2frFc"></script>


<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-60fae47589756329"></script>

<!-- Modal -->
<div class="modal fade" id="cartmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLavel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLavel">Product Quick View</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>


      <div class="modal-body">
       <div class="row">
        <div class="col-md-4">
            <div class="card">
                <img src="{{ asset( $row->image_one )}}" id="pimage" style="height: 220px; width: 200px;">
                <div class="card-body">
                    <h5 class="card-title text-center" id="pname">  </h5>
                    
                </div>
                
            </div>
            
        </div>


<div class="col-md-4">
            <ul class="list-group">
  <li class="list-group-item">Product Code:<span id="pcode"></span> </li>
  <li class="list-group-item">Category: <span id="pcat"></span></li>
  <li class="list-group-item">Subcategory: <span id="psub"></span></li>
  <li class="list-group-item">Brand:<span id="pbrand"></span> </li>
  <li class="list-group-item">Stock: <span class="badge" style="background: green;color: white;" > Available</span> </li>
</ul>
            
        </div>

        <div class="col-md-4">

        <form method="post" action="{{ route('insert.into.cart') }}">
        @csrf 
 
    <input type="hidden" name="product_id" id="product_id">

         <div class="form-group">
            <label for="exampleInputcolor">Color</label>
            <select name="color" class="form-control" id="color">
  
             </select>
             
         </div>   

 <div class="form-group">
            <label for="exampleInputcolor">Size</label>
            <select name="size" class="form-control" id="size">
   
             </select>
             
         </div>   


         <div class="form-group">
     <label for="exampleInputcolor">Quantity</label>
     <input type="number" class="form-control" name="qty" value="1"> 
         </div>   


<button type="submit" class="btn btn-primary">Add to Cart </button>

</form>  
            
        </div>
 

           
       </div>
      </div>




      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>


<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>

<script type="text/javascript">
    function productview(id){
        $.ajax({
         url: "{{ url('/cart/product/view/') }}/"+id, 
         type: "GET",
         dataType:"json",
         success:function(data){
       $('#pcode').text(data.product.product_code);
       $('#pcat').text(data.product.category_name);
       $('#psub').text(data.product.subcategory_name);
       $('#pbrand').text(data.product.brand_name);
       $('#pname').text(data.product.product_name);
       $('#pimage').attr('src',data.product.image_one);
       $('#product_id').val(data.product.id);

       var d = $('select[name="color"]').empty();
       $.each(data.color,function(key,value){
       $('select[name="color"]').append('<option value="'+value+'">'+value+'</option>'); 
        });

          var d = $('select[name="size"]').empty();
       $.each(data.size,function(key,value){
       $('select[name="size"]').append('<option value="'+value+'">'+value+'</option>'); 
        });


         }  
        })
    }


</script>



<!-- <script type="text/javascript">
    
   $(document).ready(function(){
     $('.addcart').on('click', function(){
        var id = $(this).data('id');
        if (id) {
            $.ajax({
                url: " {{ url('add/to/cart/') }}/"+id,
                type:"GET",
                dataType:"json",
                success:function(data){
             const Toast = Swal.mixin({
                  toast: true,
                  position: 'top-end',
                  showConfirmButton: false,
                  timer: 3000,
                  timerProgressBar: true,
                  onOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                  }
                })

             if ($.isEmptyObject(data.error)) {

                Toast.fire({
                  icon: 'success',
                  title: data.success
                })
             }else{
                 Toast.fire({
                  icon: 'error',
                  title: data.error
                })
             }
 

                },
            });

        }else{
            alert('danger');
        }
     });

   }); -->


</script>



<script type="text/javascript">
    
   $(document).ready(function(){
     $('.addwishlist').on('click', function(){
        var id = $(this).data('id');
        if (id) {
            $.ajax({
                url: " {{ url('add/wishlist/') }}/"+id,
                type:"GET",
                dataType:"json",
                success:function(data){
             const Toast = Swal.mixin({
                  toast: true,
                  position: 'top-end',
                  showConfirmButton: false,
                  timer: 3000,
                  timerProgressBar: true,
                  onOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                  }
                })

             if ($.isEmptyObject(data.error)) {

                Toast.fire({
                  icon: 'success',
                  title: data.success
                })
             }else{
                 Toast.fire({
                  icon: 'error',
                  title: data.error
                })
             }
 

                },
            });

        }else{
            alert('danger');
        }
     });

   });


</script>



@endsection