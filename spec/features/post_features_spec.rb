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
			Post.create(content: 'My First Post')
		end

		it 'should display posts' do
			visit '/posts'
			expect(page).to have_content 'My First Post'
		end
	end

	context 'logged in' do 
		before do
			nikesh = User.create(email: 'n@n.com', password: '12345678', password_confirmation: '12345678')
			login_as nikesh
		end

		context 'creating posts' do
			it 'user can add a post using a form' do
		        visit '/posts'
		        click_link 'New Post'
		        fill_in 'Title', with: 'Reddit'
		        click_button 'Create Post'
		        expect(page).to have_content 'Reddit'
		        expect(current_path).to eq '/posts'
	      	end
		end
	end
end
