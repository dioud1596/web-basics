get '/' do
  @coach_message = params[:coach_message] || "what do you want kid ?"
  # Look in app/views/index.erb
  
  ap "self class: #{self.class}"
  ap "self instance variables from GET '/' route handler: #{self.instance_variables}"

  erb :index
end

post '/coach' do
  answer = params[:what]
  puts "self instance variable from POST '/coach' route handler: #{self.instance_variables}"

  # until answer.include?("I am going to work") 
    
    if answer.include?("?")
    @coach_message="Silly question dude"  
    else
    @coach_message="I don't care i'm not ur mom"
    end
    erb :index
end
  
