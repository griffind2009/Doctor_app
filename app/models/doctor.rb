class Doctor < ActiveRecord::Base
  # NHO: recommend adding, dependent: :destroy to this relationship
  # to prevent orphaned records
  has_many :reviews
end
