class HomeController < ApplicationController

  def index
  end

  def check
    #binding.pry
    if params[:val].blank? or params[:val].to_i == 0
      render plain: "404 Not Found", status: 404
      return
    end

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
