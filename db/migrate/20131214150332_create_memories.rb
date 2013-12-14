class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.integer :visitor_id
      t.integer :previous_memory_id
      t.datetime :created_at
      t.string :description
    end
  end
end
