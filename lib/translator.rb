# require modules here
require "yaml"
require "pry" 

def load_library(lib)
  # code goes here
  emoticons = YAML.load_file(lib)
  
  emotions = {get_meaning: {}, get_emoticon: {}}
  
  emoticons.each do |meaning, icons|
    emotions[:get_meaning][icons[1]] = meaning
    emotions[:get_emoticon][icons[0]] = icons[1] 
  end
  
  emotions 
  
end

def get_japanese_emoticon(lib, emoticon)
  # code goes here
  
  library = load_library(lib)
  
  if !library[:get_emoticon].has_key?(emoticon) 
    return "Sorry, that emoticon was not found" 
  else
    japanese_icon = library[:get_emoticon][emoticon]
    japanese_icon 
  end
  
end

def get_english_meaning(lib, emoticon)
  # code goes here
  
  library = load_library(lib)
  
end