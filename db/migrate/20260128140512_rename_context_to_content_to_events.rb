class RenameContextToContentToEvents < ActiveRecord::Migration[8.1]
  def change
    rename_column :events, :context, :content
  end
end
