class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end


catch_book = Book.new('Catch Me If You Can', 'Frank Abagnale Jr', 253)
p catch_book
# p catch_book.read # .read does't exist yet


class Book
  def read
    1.step(@pages, 10) { |page| puts "Reading page #{page}..."}
    puts "Done! #{@title} was a great book"
  end
end

rework_book = Book.new('Rework', 'David Heinemeier Hansson', 288)
p rework_book
p rework_book.read
p catch_book.read # we have instance accet to def read
