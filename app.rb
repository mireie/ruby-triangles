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
end
post('/triangles') do
  side1 = paramas[:side1]
  side2 = paramas[:side2]
  side3 = paramas[:side3]
  triangle = Triangle.new(side1,side2,side3)
  triangle.save()
  @triangles = Triangle.all()
  erb(:triangles)
end
