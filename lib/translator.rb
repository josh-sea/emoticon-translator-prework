# require modules here
require "pry"
require "yaml"

def load_library(filepath)
# code goes here
  list = YAML.load_file(filepath)
  new_hash = {"get_meaning" => {},"get_emoticon" => {}}
  list.each do |english, emoticon|
    emoticon.each do |i|
      new_hash["get_meaning"][i] = english
      new_hash["get_emoticon"][i] = emoticon[1]
    end
  end
  new_hash
end

def get_japanese_emoticon(filepath, emoticon)
# code goes here
  
  new_hash = load_library(filepath)
  if new_hash["get_emoticon"][emoticon] == nil
    puts "Sorry, that emoticon was not found"
  else
    new_hash["get_emoticon"][emoticon]
  end
end


def get_english_meaning(filepath, emoticon)
  # code goes here
  
  hash = load_library(filepath)
  if hash["get_meaning"][emoji] == nil
    "Sorry, that emoticon was not found"
  else
    hash["get_meaning"][emoji]
  end
end
