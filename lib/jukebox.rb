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
  puts "I accept the following commands: - help : displays the help message - list : displays a list of songs you can play - play : lets you choose a song to play - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  picked_song = nil
  songs.each_with_index do |song, i|
    if user_choice == song || user_choice == (i + 1).to_s
      picked_song = song
    end
  end
  if picked_song == nil
    puts "Invalid input, please try again"
  else
    puts "Playing #{picked_song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  help
  command = nil
  while command != "exit"
    puts "Please enter a command:"
    command = gets.chomp
    case
    when command == "list"
      list(songs)
    when command == "play"
      play(songs)
    when command == "help"
      help
    when command == "exit"
      exit_jukebox
    break
  end
end
      
end