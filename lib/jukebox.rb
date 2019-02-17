songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
	puts "I accept the following commands:"
	puts "- help : displays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def list(songs)
	songs.each_with_index do |song, index|
		puts "#{index + 1}. #{song}"
	end
end


def play(songs)

	puts "Please enter a song name or number:"

	user_choice = gets.chomp

	if songs.any? {|song| song == user_choice}
		puts "Playing #{user_choice}"
	elsif user_choice.to_i != 0 && user_choice.to_i <= songs.length
		puts "Playing " + songs[user_choice.to_i - 1]
	else
		puts "Invalid input, please try again"
	end
end



def exit_jukebox
	puts "Goodbye"
end 


def run(songs)

	help

	puts "Please enter a command:"

	user_input = gets.chomp

	if user_input == "exit"
		exit_jukebox
	elsif user_input == "list"
		list(songs)
	elsif user_input == "play"
		play(songs)
	elsif user_input == "help"
		help
	else
		help
	end
end


