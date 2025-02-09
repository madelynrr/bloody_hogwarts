require 'rails_helper'

RSpec.describe "a user can visit student index page" do
  it "sees all students with name, age, house" do
    student_1 = Student.create(name: "Hermione Granger", age: 11, house: "Gryffindor")
    student_2 = Student.create(name: "Harry Potter", age: 11, house: "Gryffindor")
    student_3 = Student.create(name: "Ron Weasley", age: 11, house: "Gryffindor")

    visit '/students'

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_1.age)
    expect(page).to have_content(student_1.house)

    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_2.age)
    expect(page).to have_content(student_2.house)

    expect(page).to have_content(student_3.name)
    expect(page).to have_content(student_3.age)
    expect(page).to have_content(student_3.house)
  end

  it "shows average age of all students" do
    student_1 = Student.create(name: "Hermione Granger", age: 11, house: "Gryffindor")
    student_2 = Student.create(name: "Fred Weasley", age: 13, house: "Gryffindor")
    student_3 = Student.create(name: "Percy Weasley", age: 15, house: "Gryffindor")

    visit '/students'

    expect(page).to have_content("Average Age: 13")
  end

end
