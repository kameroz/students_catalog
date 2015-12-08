require "rails_helper"

feature "Create student" do
scenario "successfully" do
visit "/teachers/sign_in"

		click_link "Sign up"

		fill_in "Email", with: "cameros_azul@hotmail.com"
		fill_in "Password", with: "cameros"
		fill_in "Password confirmation", with: "cameros"

		click_on "Sign up"	
		click_on "Crear nuevo estudiante"
		
		fill_in "Nombre(s)", with: "Juan"
		fill_in "Apellidos", with: "Cameros"
		fill_in "Número de control", with: "10460255"
		fill_in "Semestre", with: "13"
		click_on "Guardar"
		sleep 3
				expect(current_path).to eq "/"
			expect(page).to have_content "Student was successfully created."
		
	end


		scenario "unsuccessfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

		fill_in "Email", with: "cameros_azul@hotmail.com"
		fill_in "Password", with: "cameros"
		fill_in "Password confirmation", with: "cameros"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
		click_on "Guardar"
		sleep 3
			expect(current_path).to eq "/students"
			expect(page).to have_content "First name can't be blank"
    		expect(page).to have_content "Last name can't be blank"
    		expect(page).to have_content "Control number can't be blank"
    		expect(page).to have_content "Semester can't be blank"
		
	end

	scenario "First name" do
		visit "/teachers/sign_in"

		click_link "Sign up"

		fill_in "Email", with: "cameros_azul@hotmail.com"
		fill_in "Password", with: "cameros"
		fill_in "Password confirmation", with: "cameros"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
			
		fill_in "Nombre(s)", with: "Jorge"
		fill_in "Apellidos", with: "Mendoza"
		fill_in "Número de control", with: "10460312"
		fill_in "Semestre", with: "BFN"
		
		click_on "Guardar"

			expect(current_path).to eq "/students/new"    		
		sleep 3
	end
end