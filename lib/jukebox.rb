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
  puts "- list : displays a list of songs"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, idx| puts "#{idx+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  songs.each_with_index.select do |song, idx|
    if song == user_response || idx+1 == user_response.to_i
      puts "Play #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song)
  help()
  puts "Please enter a command: "
  user_response = gets.chomp
  until user_response == "exit"
    case user_response 
    when"list"
      list()
    when "play"
      play()
    when "help"
      help()
    else
      puts "Invalid command. Please type 'help' to get a list of commands "
    end
    puts "Please enter a command: "
    user_response = gets.chomp
  end
  exit_jukebox

end
