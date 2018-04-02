require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

def setup

@library = Library.new([
  {
  title: "the_northern_lights",
  rental_details: {
   student_name: "Graeme",
   date: "03/04/18"
 }
},

{
  title: "the_subtle_knife",
  rental_details: {
   student_name: "Janice",
   date: "15/04/18"
  }
},
  {
    title: "the_amber_spyglass",
    rental_details: {
     student_name: "Lindsay",
     date: "12/04/18"
    }
  }
])

end

def test_get_books()

assert_equal([
  {
  title: "the_northern_lights",
  rental_details: {
   student_name: "Graeme",
   date: "03/04/18"
 }
},

{
  title: "the_subtle_knife",
  rental_details: {
   student_name: "Janice",
   date: "15/04/18"
  }
},
  {
    title: "the_amber_spyglass",
    rental_details: {
     student_name: "Lindsay",
     date: "12/04/18"
    }
  }
], @library.get_books())

end

def test_get_book_info

  assert_equal({ title: "the_amber_spyglass",
    rental_details: {
     student_name: "Lindsay",
     date: "12/04/18"
    }}, @library.get_book_info("the_amber_spyglass"))

  end

def test_get_rental_details

  assert_equal({
   student_name: "Lindsay",
   date: "12/04/18"
  }, @library.get_rental_details("the_amber_spyglass"))

  end
def test_add_new_book_to_library()
  new_book = {title: "La Belle Sauvage", rental_details: { student_name:"", date: ""}}
@library.add_new_book_to_library(new_book)
assert_equal([
  {
  title: "the_northern_lights",
  rental_details: {
   student_name: "Graeme",
   date: "03/04/18"
 }
},

{
  title: "the_subtle_knife",
  rental_details: {
   student_name: "Janice",
   date: "15/04/18"
  }
},
  {
    title: "the_amber_spyglass",
    rental_details: {
     student_name: "Lindsay",
     date: "12/04/18"
    }
  }, {title: "La Belle Sauvage", rental_details: { student_name:"", date: ""}}], @library.get_books)
end

def test_change_rental_details()
  @library.change_rental_details("the_subtle_knife", "Karen", "18/04/18")
assert_equal({title: "the_subtle_knife", rental_details: { student_name:"Karen", date: "18/04/18"}}, @library.get_book_info("the_subtle_knife"))
end
end
