class CreateCounter < ActiveRecord::Migration[7.0]
  def change
    create_table :counters do |t|
      t.text :title
      t.boolean :active, :default => true
      t.datetime :time_left
      t.datetime :time_started
      t.timestamps
    end
  end
end
