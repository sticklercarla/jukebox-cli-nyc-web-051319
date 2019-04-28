#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/carlastickler/Desktop/Development/jukebox-cli-nyc-web-051319/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/carlastickler/Desktop/Development/jukebox-cli-nyc-web-051319/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/carlastickler/Desktop/Development/jukebox-cli-nyc-web-051319/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/carlastickler/Desktop/Development/jukebox-cli-nyc-web-051319/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/carlastickler/Desktop/Development/jukebox-cli-nyc-web-051319/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/carlastickler/Desktop/Development/jukebox-cli-nyc-web-051319/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/carlastickler/Desktop/Development/jukebox-cli-nyc-web-051319/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands: - help : displays the help message - list : displays a list of songs you can play - play : lets you choose a song to play - exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.keys.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
end
def play(my_songs)
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  picked_song = nil
  songs.key do |song|
    if user_choice == song
      picked_song = song
    end
  end
  if picked_song == nil
    puts "Invalid input, please try again"
  else
    puts "Playing #{picked_song}"
    system "open" << my_songs[picked_song]
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  command = nil
  while command != "exit"
    puts "Please enter a command:"
    command = gets.chomp
    case
    when command == "list"
      list(my_songs)
    when command == "play"
      play(my_songs)
    when command == "help"
      help
    when command == "exit"
      exit_jukebox
    break
  end
end
end
