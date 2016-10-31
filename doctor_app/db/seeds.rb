# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all
Review.destroy_all


mark = Doctor.create({name: "Mark Cinnamon", education: "Harvard Medical School", practice: "George Washington Hospital", specialty: "Internist", img_url: "https://asset2.betterdoctor.com/images/534f2d9c4214f837f0000155-1_thumbnail.jpg" })
elizabeth = Doctor.create({name: "Elizabeth Smith", education: "University of Cincinnati Medical School", practice: "Smilez", specialty: "Orthodontist", img_url: "https://asset4.betterdoctor.com/images/5344e6894214f81792000171-1_thumbnail.jpg"})
michael = Doctor.create({name: "Michael Johnson", education: "George Washington University", practice: "Sibley Memorial Hospitaly", specialty: "Gastroenterology", img_url: "https://asset4.betterdoctor.com/images/5344e6894214f81792000171-1_thumbnail.jpg"})
jacob = Doctor.create({name: "Jacob Edwards", education: "Georgetown University", practice: "Howard University", specialty: "Podiatrist", img_url: "https://asset2.betterdoctor.com/images/53473dc34214f80b740000a7-1_thumbnail.jpg"})
gloria = Doctor.create({ name: "Gloria Banks", education: "New York Downstate Medical School", practice: "Washington Center", specialty: "Neurosurgeon", img_url: "https://asset4.betterdoctor.com/images/544f131a4214f809230001ca-2_thumbnail.jpg"})

# {
#  "doctors": [
#  {"name": "Mark Cinnamon", "education": "Harvard Medical School", "practice": "George Washington Hospital", "speciality": "Internist", "img_url": "https://asset2.betterdoctor.com/images/534f2d9c4214f837f0000155-1_thumbnail.jpg" },
#  {"name": "Elizabeth Smith", "education": "University of Cincinnati Medical School", "practice": "Smilez", "speciality": "Orthodontist", "img_url": "https://asset4.betterdoctor.com/images/5344e6894214f81792000171-1_thumbnail.jpg"},
#  {"name": "Michael Johnson", "education": "George Washington University", "practice": "Sibley Memorial Hospitaly", "speciality": "Gastroenterology", "img_url": "https://asset4.betterdoctor.com/images/5344e6894214f81792000171-1_thumbnail.jpg"},
#  {"name": "Jacob Edwards", "education": "Georgetown University", "practice": "Howard University", "speciality": "Podiatrist", "img_url": "https://asset2.betterdoctor.com/images/53473dc34214f80b740000a7-1_thumbnail.jpg"},
#  { "name": "Gloria Banks", "education": "New York Downstate Medical School", "practice": "Washington Center", "speciality": "Neurosurgeon", "img_url": "https://asset4.betterdoctor.com/images/544f131a4214f809230001ca-2_thumbnail.jpg"}
# ]}



    a = Review.create({"name":"Mark", "body":"Good doctor! Highly recommended!",doctor: mark })
    b = Review.create({"name":"Kevin", "body":"A caring doctor, will visit again.",doctor: elizabeth})
    c = Review.create({"name":"Josephine", "body":"Waited for an hour.", doctor: michael})
    d = Review.create({"name":"Mason", "body":"Very nice office", doctor: jacob})
    e = Review.create({"name":"John", "body":"Thought I was in a zoo!", doctor: gloria})
