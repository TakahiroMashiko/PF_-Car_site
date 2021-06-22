class RenameCustomerIdColumnToBlogs < ActiveRecord::Migration[5.2]
  def change
    rename_column :blogs, :customer_id, :favorite_id
  end
end
