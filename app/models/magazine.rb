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

  def articles_in_magazine
  	Article.all.select {|article| article.magazine == self }
  end

  def article_titles
  	articles_in_magazine.map {|article| article.title }
  end

  def contributors
	articles_in_magazine.map { |article| article.author }
  end

  def word_count
  	total = 0
  	articles_in_magazine.each { |article| total += article.content.split.length }
  	total
  end

  def self.find_by_name(name)
  	self.all.find {|magazine| magazine.name == name}
  end


end
