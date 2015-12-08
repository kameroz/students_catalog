require "rails_helper"

feature "Edit student" do
scenario "successfully" do
visit "/teachers/sign_in"

		click_link "Sign up"

		fill_in "Email", with: "mendoza22@hotmail.com"
		fill_in "Password", with: "kokito"
		fill_in "Password confirmation", with: "kokito"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
		
			fill_in "Nombre(s)", with: "Jorge"
			fill_in "Apellidos", with: "Mendoza"
			fill_in "Número de control", with: "10460312"
			fill_in "Semestre", with: "13"

		click_on "Guardar"
		click_on "Editar"

			fill_in "Apellidos", with: "Salazar"
		click_on "Guardar"
		sleep 3

			expect(current_path).to eq "/"
			expect(page).to have_content "Student was successfully updated."
		
	end
end