class AddVideosTable < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text   :description
      t.string :thumbnail_url
      t.string :cover_img_url

      t.timestamps
    end
  end
end
