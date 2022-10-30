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
