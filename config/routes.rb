Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:the_num", {:controller => "calc", :action =>"flex_square"} )
  get("/flexible/square_root/:the_num", {:controller => "calc", :action => "flex_square_root"})
  get("/flexible/payment/:apr/:years/:principal", {:controller => "calc", :action =>"flex_payment"} )
  get("/flexible/random/:low_num/:high_num", {:controller => "calc", :action => "random_num"})
  get("/square/results", {:controller => "calc", :action => "square_form_results"})
  get("/square/new", {:controller => "calc", :action => "square_form"})
  get("/square_root/results", {:controller => "calc", :action => "square_root_results"})
  get("/square_root/new", {:controller => "calc", :action => "square_root_form"})
  get("/random/results" , {:controller => "calc", :action => "random_num_results"})
  get("/random/new" , {:controller => "calc", :action => "random_form"})
  get("/payment/results" , {:controller => "calc", :action => "payment_results"})
  get("/payment/new" , {:controller => "calc", :action => "payment_form"})
end
