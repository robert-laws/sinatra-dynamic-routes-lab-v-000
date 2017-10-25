require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    new_name = @name.reverse
    "#{new_name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    val = @number * @number
    "#{val}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times { "#{info}"}
  end
end
