class CalcController < ApplicationController
def flex_square
  @num = params.fetch("the_num").to_i
  @num_square = @num*@num
  render("calc_templates/flexible_square.html.erb")
end
def flex_square_root
  @num = params.fetch("the_num").to_f
  @num_square_root = Math.sqrt(@num)
  render("calc_templates/flexible_square_root.html.erb")
end
def flex_payment
  @apr = params.fetch("apr").to_f/100
  @years = params.fetch("years").to_i
  @principal = params.fetch("principal").to_i
  @payment = (@apr/1200*@principal)/(1-((1+@apr/1200)**(-12*@years)))
 # @interest = (1+@apr/12)**(12/12)-1
 #  @annuity = (1-(1/(1+@interest))**@years)/@interest
 # @payment = @principal/@annuity
  render("calc_templates/flexible_payment.html.erb")
end
def random_num
  @min = params.fetch("low_num").to_i
  @max = params.fetch("high_num").to_i
  @result = rand(@max-@min)+@min
  render("/calc_templates/random_results.html.erb")
end
def square_form_results
  @num = params.fetch("user_number").to_f
  @num_square = @num**2
  render("calc_templates/square_form_results.html.erb")
end
def square_form
  render("calc_templates/square_form.html.erb")
end
def square_root_results
  @num = params.fetch("user_number").to_f
  @num_square = Math.sqrt(@num)
  render("calc_templates/square_root_results.html.erb")
end
def square_root_form
  render("calc_templates/square_root_form.html.erb")
end
def random_num_results
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_min").to_f
  @result = rand(@max-@min)+@min
  render("calc_templates/random_num_results.html.erb")
end
def random_form
  render("calc_templates/random_form.html.erb")
end
def payment_results
 @apr = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_i
  @principal = params.fetch("user_pv").to_i
  @payment = (@apr/1200*@principal)/(1-((1+@apr/1200)**(-12*@years)))
  render("calc_templates/payment_results.html.erb")
end
def payment_form
  render("calc_templates/payment_form.html.erb")
end
end