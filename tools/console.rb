require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###  WRITE YOUR TEST CODE HERE ###

dost = Author.new("Dostoevsky")
maugham = Author.new("Somerset Maugham")
seuss = Author.new("Dr. Seuss")

times = Magazine.new("Times", "news")
lit = Magazine.new("Cool Lit", "literature")
cooler_lit = Magazine.new("Our Lit is Cooler", "literature")

dost_lit = Article.new(dost, lit, "Russian Lit", "Russian Lit is cool.")
maugham_times = Article.new(maugham, times, "English News", "Stuff happening in England.")
dost_times = Article.new(dost, times, "News Headline", "News Content")
dost_cooler_lit = Article.new(dost, cooler_lit, "More Russian Lit", "I wrote a book called Brothers Karamazov.")


### DO NOT REMOVE THIS
binding.pry

0
