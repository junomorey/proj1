# Q0: Why is this error being thrown?
	this error is being thrown because I have not yet generated the pokemon model.


# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	Every time the home page is loaded it calls the index.html and pokemon.name is called. The common factor is that they dont have trainers.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.	
	The "button_to" is posting to the home page to display a button saying "Throw a pokeball". The "capture_path(id: @pokemon)" is the path that will 
	be taken to the method that needs to be called. 

# Question 3: What would you name your own Pokemon?
	junosaur

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
	I passed in current_trainer. It's ok because since it is a single instance it is implied that it is a show.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
	It is implied that it will be shown in the form because Ruby is magical and has a mind of its own.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
