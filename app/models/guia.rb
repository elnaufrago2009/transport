class Guia < ActiveRecord::Base
	belongs_to :partida_distrito, :class_name => 'Distrito', :foreign_key => 'partida_distrito_id'
	belongs_to :llegada_distrito, :class_name => 'Distrito', :foreign_key => 'llegada_distrito_id'
end
