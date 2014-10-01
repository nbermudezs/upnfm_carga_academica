class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
