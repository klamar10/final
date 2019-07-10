class AddCoverToArticles < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :proyectos, :foto
  end
end
