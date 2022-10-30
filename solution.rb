# Please copy/paste all three classes into this file to submit your solution!

# ARTICLE
class Article
  attr_reader :author, :magazine, :title
  @@all = []

  def initialize(author, name, category, title)
      @author = Author.new(author)
      @magazine =Magazine.new(name,category)
      @title = title
      @@all << self
  end

  def self.all
      @@all
  end
end
