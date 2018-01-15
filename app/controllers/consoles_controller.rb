class ConsolesController < ApplicationController
	def index
		#consoles = Console.all #this is what would be used woth real data
		consoles = [
			{name: 'nes', manufacturer: 'nintendo'}, 
			{name: 'snes', manufacturer: 'nintendo'}, 
			{name: 'n64', manufacturer: 'nintendo'}, 
			{name: 'ps1', manufacturer: 'sony'},
			{name: 'genesis', manufacturer: 'sega'}
		]

		if params[:manufacturer].present?
			consoles = consoles.select do |console|
				console[:manufacturer] == params[:manufacturer]
			end
		end
		render(json: { 'consoles' => consoles.map { |console| console[:name] } })
	end
end