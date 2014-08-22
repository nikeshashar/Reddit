require 'rails_helper'

describe 'posts' do 

	context 'there are no posts' do 
		it 'should show no posts' do
			visit '/posts'
			expect(page).to have_content 'No Posts'
			expect(page).to have_content 'Sign Up'
		end
	end
end
