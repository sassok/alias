
def check_if_user_gave_input 
	abort("No input, please try again") if ARGV.empty?
end

def get_folder_name
  return folder_name = ARGV.first
end

def create_folder(name)
  Dir.mkdir(name)
end

def create_gemfile
    puts "Start creating Gemfile"
    sleep 1
    Dir.chdir("#{Dir.pwd}/#{ARGV[0]}")
    file = File.open("Gemfile", "w")
    file.puts("source \"https://rubygems.org\"\nruby '2.7.1'\ngem 'dotenv'\ngem 'rspec'\ngem 'rubocop'\ngem 'pry'")
    file.close
    puts "End creating Gemfile"
end

def launch_bundle_install
    puts "Start install dependencies"
    system("bundle install")
    puts "End bundle install"
end

def launch_rspec
    puts "Start install rspec"
    system("rspec --init")
    puts "End install rspec"
end

def create_lib_folder
    puts "Start creating lib folder"
    Dir.mkdir("lib")
    puts "End creating lib folder"
end

def create_readme
    puts "Start creating README.md"
    file = File.open("README.md", "w")
    file.puts("# A new application coded with Ruby")
    file.close
    puts "End creating README.md"
end

def git_init
    puts "Start initialize git"
    system("git init")
    puts "End initialize git"
end

def create_env_and_gitignore
    puts "Start creating .env"
    file = File.open(".env", "w")
    file.close
    puts "End creating .env"
    puts "Start creating .gitignore"
    file = File.open(".gitignore", "w")
    file.puts(".env")
    file.close
    puts "End creating .gitignore"
end


def perform
	check_if_user_gave_input
	create_folder(get_folder_name)
	create_gemfile
	launch_bundle_install
	launch_rspec
	create_lib_folder
	create_readme
	git_init
	create_env_and_gitignore
end 


perform
