require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

# AUTHOR
newauthor1 = Author.new("Noela")
newauthor2 = Author.new("Bianca")
newauthor3 = Author.new("Glen")

# MAGAZINE
newmagazine1 = Magazine.new("Sporting News", "sports")
newmagazine2 = Magazine.new("ABC News", "entertainment")
newmagazine3 = Magazine.new("Entertainment Weekly", "entertainment")


# ARTICLE
newarticle1 = Article.new("Noela", "Sporting News", "sports", "Ronaldo Ballon d'or Wins")
newarticle2 = Article.new("Bianca", "ABC News", "entertainment", "Black Adam takes top spot at box office again")









### DO NOT REMOVE THIS
binding.pry

0
