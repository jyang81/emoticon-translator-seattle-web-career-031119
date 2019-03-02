require 'pry'
require 'yaml'
# require modules here

def load_library(library)
    hash = {}
    library = YAML.load_file('./lib/emoticons.yml')
    hash['get_meaning'] = {}
    hash['get_emoticon'] = {}
    library.each do |meaning,i|
            hash.values[0][i[1]] = meaning
            hash.values[1][i[0]] = i[1]
    end
#    binding.pry
  hash
end

def get_japanese_emoticon(library, emoticon)
    library = YAML.load_file('./lib/emoticons.yml')
    new = load_library('./lib/emoticons.yml')
#    binding.pry
    answer = ""
    if new["get_emoticon"].keys.include?(emoticon)
        answer = new["get_emoticon"][emoticon]
    else
        answer = "Sorry, that emoticon was not found"
    end
    answer
end

def get_english_meaning(library, emoticon)
    library = YAML.load_file('./lib/emoticons.yml')
    new = load_library('./lib/emoticons.yml')
    answer = ""
    if new["get_meaning"].keys.include?(emoticon)
        answer = new["get_meaning"][emoticon]
        else
        answer = "Sorry, that emoticon was not found"
    end
#    binding.pry
    answer
end
