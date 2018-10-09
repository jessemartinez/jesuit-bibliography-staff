class CreateBibliographies < ActiveRecord::Migration[5.2]
  def change
    create_table :bibliographies do |t|
      t.text :reference_type
      t.text :title
      t.text :title_section
      t.text :author
      t.text :place_published
      t.text :publisher
      t.integer :year_published
      t.text :edition
      t.text :editor
      t.integer :pages
      t.integer :number_of_volumes
      t.text :isbn
      t.text :title_series
      t.text :editor_series
      t.text :volume_series
      t.text :url
      t.text :doi
      t.text :abstract
      t.text :submitter
      t.timestamps
    end
  end
end
