require 'rails_helper'


RSpec.describe Crammer::ClassesController, type: :controller do
    

    describe 'POST classes#create' do
        context 'with valid attributes' do
            it 'should save the new class in the database'
                sign_in user
                visit new_classes_path

                fill_in "name", with: "Ruby on Rails"
                

                expect { click_button "Create class" }.to change(Crammer::Class, :count).by(1)

            it 'should redirect to the classes#index page'
                sign_in user
                visit new_classes_path

                fill_in "name", with: "Ruby on Rails"
                click_button "Create class"
                expect { redirect_to classes_path }
        end
        
        context 'with invalid attributes' do
            it 'should not save the new class in the database'
                sign_in user
                visit new_classes_path

                fill_in "name", with: ""      

                expect { click_button "Create class" }.not_to change(Crammer::Class, :count).by(1)
            
            it 'should render classes#new template'
                sign_in user
                visit new_classes_path

                fill_in "name", with: ""
                
                expect { redirect_to classes_path }
        end
    end
end

