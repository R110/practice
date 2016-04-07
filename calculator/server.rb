require "sinatra"
require_relative "calculator.rb"

get "/" do
    erb(:home)
end

post "/calculate" do
  @operation = params[:operation]
  @a =  params[:first_number].to_f
  @b = params[:second_number].to_f
  @result = "hello"
  calc = Calculator.new
  case @operation
  when "add"
    @result = calc.add(@a,@b)
  when "subtract"
    @result = calc.subtract(@a,@b)
  when "multiply"
    @result = calc.multiply(@a,@b)
  when "divide"
    @result = calc.divide(@a,@b)
  else
    @result = "error"

  end

  erb :result
end
