class CreateTestimonials < ActiveRecord::Migration[6.0]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :date
      t.string :content
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
