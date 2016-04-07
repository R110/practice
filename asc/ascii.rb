require "sinatra"
require "artii"

get "/ascii/:word" do
  @word = params[:word]
  my_artii = Artii::Base.new :font => 'slant'
  @theword = my_artii.asciify(@word)

  erb(:ascii2)
end
