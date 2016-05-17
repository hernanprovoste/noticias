class StaticPagesController < ApplicationController
	def inicio
		@notices = Notice.all.order("created_at DESC").first(3)
		@notices2 = Notice.first(3).reverse
		@notices3 = Notice.all.order("created_at DESC").last(3).reverse
		@notices4 = Notice.last(3).reverse

		@opinions = Opinion.all.order("created_at DESC").first(2)

		@ensayos = Ensayo.all.order("created_at DESC").first(3)

		@fotos = Foto.all.last(1)
	end

	def contactenos
	end

	def somos
	end
end
