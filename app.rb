require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @triangles = Triangle.all
  erb(:triangles)
  
end
get('/triangles') do
  @triangles = Triangle.all
  erb(:triangles)
  erb(:new_triangle)
end
post('/triangles') do
  side1 = params[:triangle_side_1]
  side2 = params[:triangle_side_2]
  side3 = params[:triangle_side_3]
  triangle = Triangle.new(side1,side2,side3, nil)
  triangle.save()
  @triangles = Triangle.all()
  erb(:triangles)
end

get('/triangles/new') do
  erb(:new_triangle)
end