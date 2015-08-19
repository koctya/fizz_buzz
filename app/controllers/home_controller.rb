class HomeController < ApplicationController

  def index
  end

  def check
    val = params[:val].to_i

    result = case
    when ((val % 3 ==0) and (val % 5 ==0))
      'FizzBuzz'
    when val % 3 == 0
      'Fizz'
    when val % 5 == 0
      'Buzz'
    else
      ""
    end
    render json: result
  end
end
