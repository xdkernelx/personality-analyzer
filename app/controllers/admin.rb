get '/admin/new' do
  erb :'admin/admin', locals:, {sorted_results: sort_db}
end
