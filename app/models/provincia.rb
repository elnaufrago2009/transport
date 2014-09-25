class Provincia < ActiveRecord::Base
	belongs_to :departamento
	has_many :distritos
	accepts_nested_attributes_for :distritos, :reject_if => :all_blank, :allow_destroy => true
end
