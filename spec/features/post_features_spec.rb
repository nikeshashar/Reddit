describe 'posts' do 

	context 'when logged out' do 
		it 'should take us to a sign up page' do
			visit '/posts'
			click_link 'Add a post'
			expect(page).to have_content 'Sign Up'
		end
	end
end
