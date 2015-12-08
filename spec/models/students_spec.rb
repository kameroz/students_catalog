require 'rails_helper'

describe Student do
	describe "#full_name" do
	it "returns complete name" do
	student=Student.create!( 
	first_name: "Jorge",
	last_name: "Mendoza",
	birthdate: "01/01/1990",
	control_number:"10460312",
	semester: "13" )

		    expect(student.name).to eq "Jorge Mendoza"
		end
	end

	describe "validations" do
	    it "fails to save" do
	    	post = Student.new
	      	post.save
	      	expect(post).to_not be_persisted
	    end

	    it "validates presence of first_name" do
	      	post = Student.new(last_name: "Mendoza", birthdate: "01/01/1990", control_number:"10460312", semester: "13")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["First name can't be blank"])
	    end

	    it "validates presence of last_name" do
	      	post = Student.new(first_name: "Jorge", birthdate: "01/01/1990", control_number:"10460312", semester: "13")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Last name can't be blank"])
	    end

	    it "validates presence of birthdate" do
	      	post = Student.new(first_name: "Jorge", last_name: "Mendoza", control_number:"10460312", semester: "13")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Birthdate can't be blank"])
	    end
	   
	    it "validates presence of control_number" do
	      	post = Student.new(first_name: "Jorge", last_name: "Mendoza", birthdate: "01/01/1990", semester: "13")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Control number can't be blank"])
	    end

	    it "validates presence of semester" do
	      	post = Student.new(first_name: "Jorge", last_name: "Mendoza", birthdate: "01/01/1990", control_number:"10460312")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Semester can't be blank"])
	    end
	   
  	end
  		it "returns complete name" do
		student=Student.create!( 
		first_name: "Juan",
		last_name: "Cameros",
		birthdate: "28/10/1989",
		control_number:"10460255",
		semester: "13" )

		expect(student.name).to eq "Juan Cameros"
		end

	describe "validations" do
	    it "fails to save" do
	    	post = Student.new
	      	post.save
	      	expect(post).to_not be_persisted
	    end

	    it "validates presence of first_name" do
	  post = Student.new(last_name: "Cameros", birthdate: "28/10/1989", control_number:"10460255", semester: "13")
	  post.save
	  expect(post.errors.full_messages).to eq(["First name can't be blank"])
	    end

	    it "validates presence of last_name" do
	   post = Student.new(first_name: "Juan", birthdate: "28/10/1989", control_number:"10460255", semester: "13")
	   post.save
	   expect(post.errors.full_messages).to eq(["Last name can't be blank"])
	    end

	    it "validates presence of birthdate" do
	   post = Student.new(first_name: "Juan", last_name: "Cameros", control_number:"10460255", semester: "13")
	   post.save
	   expect(post.errors.full_messages).to eq(["Birthdate can't be blank"])
	    end
	   
	    it "validates presence of control_number" do
	   post = Student.new(first_name: "Juan", last_name: "Cameros", birthdate: "28/10/1989", semester: "13")
	   post.save
	   expect(post.errors.full_messages).to eq(["Control number can't be blank"])
	    end

	    it "validates presence of semester" do
	   post = Student.new(first_name: "Juan", last_name: "Cameros", birthdate: "28/10/1989", control_number:"10460255")
	   post.save
	   expect(post.errors.full_messages).to eq(["Semester can't be blank"])
end
	   
end

end

