module FeatureAuthenticationHelper
	def login_as(user)
		visit new_session_path
		fill_in "username", with: user.username
		fill_in "password", with: "robot"
		click_button "Sign In"	
	end

	def log_out(user)
		visit questions_path
		click_button "Logout"
	end
end