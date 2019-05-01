class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
  	@@all << self
  end

  def self.all 
  	@@all
  end

  def articles
  	Article.all.select {|article| article.author == self }
  end

  def add_article(magazine, title, content)
  	Article.new(self, magazine, title, content)
  end

  def magazines
  	articles.map { |article| article.magazine }.uniq
  end

  def show_specialties
  	magazines.map { |magazine| magazine.category }.uniq
  end

  def self.most_verbose
  	articles.max_by { |article| article.content.length }
  end

  def self.most_active
  	self.all.max_by { |author| author.articles.length }
  end

end
