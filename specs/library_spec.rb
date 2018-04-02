require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class Library < MiniTest::Test

def setup
@library = Library.new(
  [
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

end
