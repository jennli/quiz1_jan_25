# 7. Implement the following code in Ruby: Create a module called HelperMethods that include a method called `titleize` that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from.

# BONUS: Rewrite the method `titleize` in question #7 without mutating any variable.

module HelperMethods

  def titleize(str)
    str.split(" ").map {|word| capitalize_word(word)}.join(" ")
  end

  def capitalize_word(word)
    case word
    when "in", "the", "of", "and", "or", "from"
      word
    else
      word.capitalize
    end
  end
end
