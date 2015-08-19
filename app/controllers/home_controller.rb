class HomeController < ApplicationController

  def index
  end

  def check
    val = params[:val].to_i

    result = case val
    when val % 3 == 0
      'Fizz'
    when val % 5 == 0
      'Buzz'
    when (!(val % 3) and !(val % 5))
      'FizzBuzz'
    else
      ""
    end
    binding.pry
    render json: result
  end
end
