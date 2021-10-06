class CreateTOdos < ActiveRecord::Migration[5.2]
  def change
    create_table :t_odos do |t|
      t.string :title
      t.string :contents

      t.timestamps
    end
  end
end
