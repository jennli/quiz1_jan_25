# 8. Create a Ruby class called Article inside a module called Blog that has two attributes: title and body. Write another class called Snippet that inherits from the Article class. The Snippet method should return the same `title` but if you call `body` on a snippet object it should return the body truncated to a 100 characters with three dots at the end. This means if you create a snippet object and give it a body that has 200 characters, if you call the `body` method it should return the first 100 characters of that body and three dots at the end. If the body is 100 characters or less, it should not put three dots at the end. Include the module you built in question #7 in the Article class and use it when returning the title.

#HelperMethods module copied from question 7
module HelperMethods

  def titleize(str)

    arr = str.split(" ").map do |word|
      case word
      when "in", "the", "of", "and", "or", "from"
        word
      else
        word.capitalize
      end
    end

    arr.join(" ")

  end

end

#blog module for question 8
module Blog

  class Article
    attr_accessor :title
    attr_reader :body
    include HelperMethods

    def initialize(title, body)
      @title = titleize(title)
      @body = body
    end

    def set_body(body)
      @body = body
    end

  end

  class Snippet < Article
    #Because i don't want to user to be able to change the body without checking the length, i'm restricting the attr_accesor to attr_reader for the body attribute, and changing body has to use set_body

    def initialize(title, body)
      super
      set_body(body)
    end

    def set_body(body)
      if body.length > 100
        @body = body[0...100] + "..."
      end
    end

  end
end
