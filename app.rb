require "sinatra"
  require "sinatra/reloader"
  require "sinatra/activerecord"
  set :database, { adapter: "sqlite3", database: "mydb.db" }
require '/.models/student'
require '/.models/student_class'
require '/.models/college_class'

get '/students' do
  @students = Student.all
  erb :students
end

get '/student/:id' do
  @student = Student.find(params[:id])
  if @student.nil?
    return "student not found"
  end
  erb :student
end

get '/college_classes' do
  @CollegeClass = Class.all
  erb :college_classes
end

get '/college_classes/:id' do
  @CollegeClass = CollegeClass.find(params[:id])
  if @CollegeClass.nil?
    return "class not found"
  end
  erb :CollegeClass
end
  