class AddKonj < ActiveRecord::Migration
def change
    change_table :turnover_summary do |t|
      t.decimal :ep, :precision => 32, :scale => 16
    end
  end
end
