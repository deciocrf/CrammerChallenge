ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :email, :password, :password_confirmation, :access

    index do
        column :id
        column :email
        column :sign_in_count
        column :current_sign_in_ip
        column :last_sign_in_ip
        column :access
        actions
        
    end
    filter :email

    form do |f|
        f.inputs "User" do
        f.input :email
        f.input :password
        f.input :password_confirmation
        f.input :access, :as => :radio
        end
        f.actions
    end

end
