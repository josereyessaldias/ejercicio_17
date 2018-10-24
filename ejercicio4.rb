class Dog
	def initialize(propiedades)
		@nombre = propiedades[:nombre]
		@raza = propiedades[:raza]
		@color = propiedades[:color]
	end

	def ladrar
		puts "#{@nombre} está ladrando"
		
	end
end

caract = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'cafe'}
mi_perro = Dog.new(caract)
mi_perro.ladrar


