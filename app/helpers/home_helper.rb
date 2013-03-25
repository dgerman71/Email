module HomeHelper
	def enlace(nombre,accion)
		link_to nombre, :action => accion
	end

	def hay_banner?
		if content_for?(:imagen)
			return true
		end
	end
end
