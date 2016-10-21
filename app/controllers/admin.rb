get '/admin/new' do
  @ordered = sort_db
  erb :'admin/admin'
end
