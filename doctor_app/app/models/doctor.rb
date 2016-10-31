class Doctor < ActiveRecord::Base
  has_many :reivews



  # attr_reader :name, :school
  #
  # url = "https://api.betterdoctor.com/2016-03-01/doctors?location=38.907192%2C-77.036871%2C100&user_location=38.907192%2C-77.036871&skip=0&limit=10&user_key=#{ENV["doctor_api_key"]}"
  #  response = HTTParty.get(url)


end
