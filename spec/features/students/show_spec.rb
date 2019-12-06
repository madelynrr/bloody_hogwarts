require 'rails_helper'

RSpec.describe "a user can visit a student show page" do
  it "sees a list of the student's courses" do
    daad = Course.new(name: "Defense Against the Dark Arts")
    transfig = Course.new(name: "Transfiguration")
    herbology = Course.new(name: "Herbology")
    astronomy = Course.new(name: "Astronomy")
    potions = Course.new(name: "Potions")
    muggles = Course.new(name: "Muggle Studies")

    student_1 = Student.create(name: "Hermione Granger", age: 13, house: "Gryffindor")
    daad.students << student_1
    transfig.students << student_1
    herbology.students << student_1
    astronomy.students << student_1
    potions.students << student_1
    muggles.students << student_1

    student_2 = Student.create(name: "Harry Potter", age: 13, house: "Gryffindor")
    daad.students << student_1
    transfig.students << student_1
    herbology.students << student_1
    astronomy.students << student_1
    potions.students << student_1

    visit "/students/#{student_1.id}"
    expect(page).to have_content(daad.name)
    expect(page).to have_content(transfig.name)
    expect(page).to have_content(herbology.name)
    expect(page).to have_content(astronomy.name)
    expect(page).to have_content(potions.name)
    expect(page).to have_content(muggles.name)

    visit "/students/#{student_2.id}"
    expect(page).to have_content(daad.name)
    expect(page).to have_content(transfig.name)
    expect(page).to have_content(herbology.name)
    expect(page).to have_content(astronomy.name)
    expect(page).to have_content(potions.name)
  end
end
