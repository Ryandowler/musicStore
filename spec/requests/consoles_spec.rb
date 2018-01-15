require "rails_helper"

RSpec.describe "Consoles requests" do
	describe "GET /consoles" do
		it "returns an array of consoles" do
			get ("/consoles")
			expect(response_json['consoles']).to contain_exactly(
				'nes',
				'snes',
				'n64',
				'ps1',
				'genesis')
		end

		it "gets consoles by manufacturer" do
			#get ('/consoles', params: { manufacturer: 'nintendo' })
			get '/consoles', {:manufacturer => 'nintendo'}
			expect(response_json['consoles']).to contain_exactly(
				'nes',
				'snes',
				'n64',)
		end
	end
end