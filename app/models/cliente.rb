class Cliente < ActiveRecord::Base

	attr_accessible :nombre :rfc :calle :numExt :numInt :colonia :municipio :estado :pais :cp

	validates_precence_of :nombre :rfc :calle :numExt :colonia :municipio :estado :cp

	validates :rfc format: { with: /[A-ZÑ&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z0-9]?[A-Z0-9]?[0-9A-Z]?/
		message: 'RFC incorrecto' }

	validates :nombre format: { with: / [A-Za-zÁÉÍÓÚáéíóú ]+/
		message: 'Nombre incorrecto' }

	validates :calle format: { with: / [0-9A-Za-zÁÉÍÓÚáéíóú .]+/
		message: 'Calle incorrecto' }

	validates :numExt format: { with: / ([0-9]+ |"S\\N")/
		message: 'Numero externo incorrecto' }

	validates :numInt format: { with: / ([0-9A-Za-z]* |"S\\N")/
		message: 'Numero interno Incorrecto' }

	validates :colonia format: { with: / [0-9A-Za-zÁÉÍÓÚáéíóú .]+/
		message: 'colonia incorrecta' }

	validates :municipio format: { with: / [A-Za-zÁÉÍÓÚáéíóú ]+/
		message: 'municipio incorrecto' }

	validates :estado format: { with: / [A-Za-zÁÉÍÓÚáéíóú ]+/
		message: 'Estado incorrecto' }

	validates :pais format: { with: / [A-Za-zÁÉÍÓÚáéíóú ]+/
		message: 'Pais incorrecto' }

	validates :cp format: { with: / [0-9]{5}/
		message: 'Codigo postal incorrecto' }

	def initialize
		:pais = 'Mexico'
	end
end
