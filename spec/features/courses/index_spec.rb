require 'rails_helper'

RSpec.describe "a user can visit course index page" do
  it "shows all course names and number of students enrolled in each course" do
    daad = Course.create(name: "Defense Against the Dark Arts")
    muggles = Course.create(name: "Muggle Studies")

    student_1 = Student.create(name: "Hermione Granger", age: 13, house: "Gryffindor")
    student_2 = Student.create(name: "Harry Potter", age: 13, house: "Gryffindor")
    student_3 = Student.create(name: "Ron Weasley", age: 11, house: "Gryffindor")

    daad << student_1
    daad << student_2
    daad << student_3

    muggles << student_1

    visit '/courses'

    expect(page).to have_content("Defense Against the Dark Arts: 3")
    expect(page).to have_content("Muggle Studies: 1")
  end
end
