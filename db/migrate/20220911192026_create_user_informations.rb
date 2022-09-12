class CreateUserInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_informations do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :cpf , unique:true, null:false
      t.string :email, unique:true, null:false
      t.date :date  #format? %Y-%m-%d ?  

      t.timestamps
    end
  end
end
