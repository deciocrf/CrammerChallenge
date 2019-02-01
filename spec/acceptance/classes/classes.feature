describe "classes display for customers", type: :feature do
  before :each do
    user = User.create(email: 'user@example.com', password: 'password', access: 'customer')
    class = Crammer::Class.create(name: 'Acceptance', user: user.id)
  end

  it "signs me in" do
    visit '/users/login'
    within("#new") do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'
    end
    click_button 'Sign in'
    expect(page).to redirect_to root_path
  end

  it "clicks on Manage Classes" do
    visit '/classes'
    click_button 'Create class'
    expect(:crammer_classes.user.id).to eq(current_user.id)
  end
end