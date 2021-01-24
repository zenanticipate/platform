class AddRvn < ActiveRecord::Migration
def change
    change_table :turnover_summary do |t|
      t.decimal :rvn, :precision => 32, :scale => 16
    end
  end
end
