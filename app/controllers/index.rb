get '/' do
  @categories = Category.all
  erb :index
end

get '/all' do
  @posts = Post.all
  erb :category
end

get '/category/:id' do
  id = params[:id]
  @posts = Post.where(category_id: id)
  erb :category
end
 
get '/submit' do
  p params
  erb :submit #create in views
end

post '/submit_post' do
  post_attributes = {}
  params.each { |k,v| post_attributes[k.to_sym] = v }
  post_attributes[:secret_key] = Post.generate_secret_key
  Post.create(post_attributes)
  redirect to("/all")
end

get '/submit' do
  p params
  erb :submit #create in views
end

get '/post/:id' do
  @id = params[:id]
  @post = Post.find(@id)
  erb :post
end


get '/edit/:secret_key' do
  @post = Post.where(secret_key: params[:secret_key]).first
  p @post
  erb :edit
end


post '/edit_post' do
  post_attributes = {}
  params.each { |k,v| post_attributes[k.to_sym] = v }
  post = Post.where(secret_key: params[:secret_key]).first
  post.update_attributes(post_attributes)
  redirect to("/all")
end