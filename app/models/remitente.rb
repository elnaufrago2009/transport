class Remitente < ActiveRecord::Base
	has_many :remitente_direcciones
	accepts_nested_attributes_for :remitente_direcciones, :reject_if => :all_blank, :allow_destroy => true
end
