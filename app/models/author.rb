require_relative "./article.rb"
class Author
  attr_reader :name
  @magazine = []
  def initialize(name)
    @name = name
  end

  def articles
    Article.all.select do |article|article.author.name == self.name
    end
  end

  def add_article(title, name, category)
    Article.new(title, self, name, category)
  end

  def magazines
    magazine_self.uniq
  end

  private
  def magazine_self
    self.articles.map do
      |article|article.magazine
    end
  end

  def topic_areas
    @magazine.map {|magazine|magazine.category}.uniq
  end
end
