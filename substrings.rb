DICTIONARY = ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit']

def substrings(text, dictionary)
  matching = {}
  text.downcase!

  dictionary.each do |word|
    substr = text.scan(word).length
    matching[word] = substr unless substr.zero?
  end

  puts matching
end

# word_hash = words_to_hash("How's it going, partner?")
substrings("How's it going, partner?", DICTIONARY)
