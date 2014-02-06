
get '/' do
  @albums = Album.list
  erb :index
end

get '/new' do
  erb :form
end

post '/' do
  # Create a new album and add it to the $albums array
   Album.new(params[:album]).save 
   @albums = Album.list
  # You should use only one parameter of the params hash named :album
  # You should use only Album#new and Album#save
  erb :index
end

get '/:id' do 
  # Find the album with index :id and transmit it to the show view
  @album = Album.find(params[:id].to_i)

  erb :show
end
