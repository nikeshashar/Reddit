require 'rails_helper'

describe 'posts' do 

	context 'there are no posts' do 
		it 'should show no posts' do
			visit '/posts'
			expect(page).to have_content 'No Posts'
			expect(page).to have_content 'Sign Up'
		end
	end

	context 'posts have been added' do 
		before do 
			post1 = Post.create(content: 'My First Post')
		end
		it 'should display them' do
			visit '/posts'
			expect(page).to have_content 'My First Post'
		end
	end
end
