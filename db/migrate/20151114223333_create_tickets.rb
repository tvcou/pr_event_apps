class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.reference :user
      t.reference :event
      t.string :comment

      t.timestamps null: false
    end
  end
end
