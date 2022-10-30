require_relative "./article"
 class Magazine
   attr_accessor :name, :category
   @@all = []

   def initialize(name, category)
     @name = name
     @category = category
     @@all << self
   end

   def self.all
     @@all
   end
   def contributors
    Article.all.filter {|article| article.magazine == self}.map {|article| article.author}
  end

  def self.find_by_name(name)
    @@all.find {|magazine| magazine.name == name}
  end

  def article_titles
    Article.all.filter {|article| article.magazine == self}.map {|article| article.title}
  end

  def contributing_authors
    Article.all.filter {|article| article.magazine == self}.map{|article| article.author}.uniq
    .filter {|author|  all_magazine_authors.count(author) > 2}
  end
end
