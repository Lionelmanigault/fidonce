class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :fname
      t.string :feedback

      t.timestamps null: false
    end
  end
end
