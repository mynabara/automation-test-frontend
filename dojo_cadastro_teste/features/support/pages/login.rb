class LoginPage < SitePrism::Page
    element :username_field, ("input[name='email']"), match: :first
    element :password_field, "input[name='passwd']"
    element :submit_login_button, "button[name='SubmitLogin']"

    def log_in(username,password)
        username_field.set(username)
        password_field.set(password)
        submit_login_button.click
    end
end