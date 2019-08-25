# require modules here
require "yaml"
require "pry" 

def load_library(lib)
  # code goes here
  emoticons = YAML.load_file(lib)
  
  emotions = {get_meaning: {}, get_emoticon: {}}
  
  emoticons.each do |meaning, icons|
    # emotions[:get_meaning] = meaning
    # emotions[:get_emoticon] = icons[0]
    binding.pry 
  end 
  emotions 
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end