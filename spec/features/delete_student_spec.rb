require "rails_helper"
feature "Delete student" do
scenario "successfully" do
visit "/teachers/sign_in"



		click_link "Sign up"

		fill_in "Email", with: "cameros_azul@hotmail.com"
		fill_in "Password", with: "cameros"
		fill_in "Password confirmation", with: "cameros"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
		
		fill_in "Nombre(s)", with: "Francisco"
		fill_in "Apellidos", with: "Castellanos"
		fill_in "Número de control", with: "cameros"
		fill_in "Semestre", with: "13"

		click_on "Guardar"
		click_on "Borrar"

		sleep 3
		
		a = page.driver.browser.switch_to.alert
    	expect(a.text).to eq("Are you sure?")
    	a.accept
		expect(current_path).to eq "/"
		expect(page).to have_content "Student was successfully destroyed."

		
end

end