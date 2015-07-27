class CalculationsController < ApplicationController
  def instructions
    @title = "Our Little Calculator"
    render("instructions.html.erb")
  end

  def square
    @title = "Square"
    @number = params["number"].to_i
    @square_number = @number ** 2

    render("square.html.erb")
  end


  def square_root
    @title = "Square Root"
    @number = params["number"].to_f
    @square_root_number = (@number ** 0.5).round(2)

    render("square_root.html.erb")
  end


  def random
    @title = "Random Number"
    @min = params["min"].to_i
    @max = params["max"].to_i
    @random = rand(@max-@min-1)+@min+1

    render("random.html.erb")
  end


  def payment
    @title = "Payment"
    @apr = params["interest_rate"].to_f
    @years = params["number_of_years"].to_i
    @principal = params["principal_value"].to_i

    @monthly_interest = @apr / 120000
    @months = @years * 12

    @monthly_payment = @principal.to_f * (@monthly_interest / (1 - (1 + @monthly_interest)**(- @months)))

render("payment.html.erb")
end
end
