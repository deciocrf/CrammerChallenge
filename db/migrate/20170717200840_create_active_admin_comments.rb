class CreateActiveAdminComments < ActiveRecord::Migration[5.0]
  def change
    create_table :active_admin_comments do |t|
      t.string :namespace
      t.text   :body
      t.references :resource, polymorphic: true
      t.references :author, polymorphic: true
      t.timestamps
      t.index [:namespace]
    end
  end
end
