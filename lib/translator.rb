# require modules here
require "pry"
require "yaml"

def load_library(filepath)
# code goes here

  list = YAML.load_file(filepath)
  new_hash = {"get_meaning" => {},"get_emoticon" => {}}
  list.each do |english, emoji|
    emoji.each do |x|
      hash["get_meaning"][x] = english
      hash["get_emoticon"][x] = emoji[1]
    end
  end
end

# def get_japanese_emoticon
# # code goes here
# def get_japanese_emoticon(filepath, emoji)
# hash = load_library(filepath)
# if hash["get_emoticon"][emoji] == nil
#   "Sorry, that emoticon was not found"
# else
#   hash["get_emoticon"][emoji]
# end
# end
# def get_english_meaning
# # code goes here
# end 
# def get_english_meaning(filepath, emoji)
# hash = load_library(filepath)
# if hash["get_meaning"][emoji] == nil
#   "Sorry, that emoticon was not found"
# else
#   hash["get_meaning"][emoji]
# end
# end
