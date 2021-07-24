@extends('layouts.app')

@section('content')
@include('layouts.menubar')

<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/shop_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/shop_responsive.css') }}">

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/shop_background.jpg"></div>
		<div class="home_overlay"></div>
		<div class="home_content d-flex flex-column align-items-center justify-content-center">
			<h2 class="home_title">Category Product </h2>
		</div>
	</div>

	<!-- Shop -->

	<div class="shop">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">

					<!-- Shop Sidebar -->
					<div class="shop_sidebar">
						<div class="sidebar_section">
							<div class="sidebar_title">Categories</div>
							<ul class="sidebar_categories">
                            @php
                         $category =  DB::table('categories')->get();
                            @endphp

								@foreach($category as $cat)
				 <li><a href="{{ url('allcategory/'.$cat->id) }}">{{ $cat->category_name }}</a></li>
								@endforeach
								 
							</ul>
						</div>
						<div class="sidebar_section filter_by_section">
							<div class="sidebar_title">Filter By</div>
							<div class="sidebar_subtitle">Price</div>
							<div class="filter_price">
								<div id="slider-range" class="slider_range"></div>
								<p>Range: </p>
								<p><input type="text" id="amount" class="amount" readonly style="border:0; font-weight:bold;"></p>
							</div>
						</div>
						 
						<div class="sidebar_section">
							<div class="sidebar_subtitle brands_subtitle">Brands</div>
							<ul class="brands_list">
								
                            @php
                           $brands =  DB::table('brands')->get();
                            @endphp
								@foreach($brands as $row)
			 <li class="brand"><a href="#">{{ $row->brand_name }}</a></li>
								@endforeach
								 
							</ul>
						</div>
					</div>

				</div>

				<div class="col-lg-9">
					
					<!-- Shop Content -->

					<div class="shop_content">
						<div class="shop_bar clearfix">
							<div class="shop_product_count"><span>2</span> products found</div>
							<div class="shop_sorting">
								<span>Sort by:</span>
								<ul>
									<li>
										<span class="sorting_text">highest rated<i class="fas fa-chevron-down"></span></i>
										<ul>
											<li class="shop_sorting_button" data-isotope-option='{ "sortBy": "original-order" }'>highest rated</li>
											<li class="shop_sorting_button" data-isotope-option='{ "sortBy": "name" }'>name</li>
											<li class="shop_sorting_button"data-isotope-option='{ "sortBy": "price" }'>price</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>

						<div class="product_grid row">
							<div class="product_grid_border"></div>

                     @foreach($category_all as $pro)
							<!-- Product Item -->
							<div class="product_item is_new">
								<div class="product_border"></div>
								<div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="{{ asset($pro->image_one) }}" alt="" style="height: 100px; width: 100px;"></div>
								<div class="product_content">
									
					  @if($pro->discount_price == NULL)
<div class="product_price discount">Rs.{{ $pro->selling_price }}<span> </div>
      @else
<div class="product_price discount">Rs.{{ $pro->discount_price }}<span>Rs.{{ $pro->selling_price }}</span></div>
      @endif				

 <div class="product_name"><div><a href="{{ url('product/details/'.$pro->id.'/'.$pro->product_name) }}" tabindex="0">{{ $pro->product_name  }} </a></div></div>
								</div>
								<div>                          
								<button type="button" class="btn btn-primary addcart" id="{{ $pro->id }}" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)">Add to Cart</button>
                        </div>
                   


                <button class="addwishlist" data-id="{{ $pro->id }}" >
                    <div class="product_fav"><i class="fas fa-heart"></i></div>
                </button>
								

								 <ul class="product_marks">
       @if($pro->discount_price == NULL)
       <li class="product_mark product_new" style="background: blue;">New</li>
       @else
                       <li class="product_mark product_new" style="background: red;">
                       @php
                         $amount = $pro->selling_price - $pro->discount_price;
                         $discount = $amount/$pro->selling_price*100;

                       @endphp
                       
                       {{ intval($discount) }}%

                      </li>  
                        @endif     
            </ul> 
							</div>
                          @endforeach

						</div>

						<!-- Shop Page Navigation -->

						<div class="shop_page_nav d-flex flex-row">
							 
							 
                               {{ $category_all->links() }}
							  
							 
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>




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
                <img src="{{ asset( $pro->image_one )}}" id="pimage" style="height: 220px; width: 200px;">
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