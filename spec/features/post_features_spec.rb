require 'rails_helper'

describe 'posts' do 

	context 'there are no posts' do 
		it 'should show no posts' do
			visit '/posts'
			expect(page).to have_content 'No Posts'
		end
	end
end
