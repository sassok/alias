require 'launchy'

def check_if_user_gave_input 
	abort("No input, please try again") if ARGV.empty?
end



def search_input_from_user
	search_input = ARGV.join("+")
	link = "https://www.google.com/search?q=" + search_input
	`open #{link}`
end 


def perform 
check_if_user_gave_input
search_input_from_user
end 

perform