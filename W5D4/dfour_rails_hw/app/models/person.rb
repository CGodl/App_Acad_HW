class Person < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :house_id


  belongs_to(:house, {
    primary_key: :id,
    foreign_key: 
    class_name: :Toy
  })



end