<div class="container-fluid"style="margin-bottom:200px;">
        <div class="contact-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-xs-6 col-sm-12">
                        <div class="email">
                            <i class="fas fa-envelope">  jahir.dev@gmail.com</i>
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-xs-6 col-sm-12">
                        <div class="phone">
                          <i class="fas fa-mobile-alt"> +880 17 01 06 19 20</i>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-6 col-sm-12">
                        <div class="create-account">
							<a href="{{url('/register')}}"><i class="fas fa-address-book"></i>Create an account</a>
							<a href="{{url('/logout')}}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"><i class="fas fa-sign-out-alt"></i>Logout</a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                        </form>
						</div>                        
                    </div>
                </div>  <!-- row -->
            </div>  <!-- container -->
        </div>  <!-- contact-header -->
    </div>  <!-- container-fluid -->
    