class AddPolar < ActiveRecord::Migration
  def change 
      change_table :turnover_summary do |t| 
      t.decimal :gc, :precision => 32, :scale => 16 
    end 
  end 
end
