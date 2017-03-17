class InitTable < ActiveRecord::Migration
  def change
    create_table 'admins' do |t|
      t.string :name, :null => false
      t.string :login, :null => false
      t.string :password_digest, :null => false     
      t.integer :status, :null => false, :default => 1

      t.timestamps
    end

    create_table 'mentors' do |t|
      t.string :name, :null => false
      t.integer :gender, :null => false, :default => 1
      t.integer :nation, :null => false
      t.integer :id_type, :null => false, :default => 1
      t.string :id_number, :null => false
      t.string :mobile, :null => false
      t.string :email, :null => false
      t.integer :province_id, :null => false
      t.integer :city_id, :null => false
      t.integer :district_id, :null => false
      t.string :work_unit, :null => false
      t.string :telephone
      t.integer :status, :null => false, :default => 1

      t.timestamps
    end

    create_table 'students' do |t|
      t.integer :mentor_id, :null => false
      t.string :name, :null => false
      t.integer :gender, :null => false, :default => 1
      t.integer :nation, :null => false
      t.integer :id_type, :null => false, :default => 1
      t.string :id_number, :null => false
      t.string :other
      t.integer :province_id, :null => false
      t.integer :city_id, :null => false
      t.integer :district_id, :null => false
      t.string :school, :null => false
      t.string :grade, :null => false
      t.string :guardian_name, :null => false
      t.string :guardianship, :null => false
      t.string :mobile, :null => false
      t.string :email, :null => false
      t.integer :status, :null => false, :default => 1

      t.timestamps
    end

    create_table 'checks' do |t|
      t.string :code, :null => false
      t.integer :group, :null => false
      t.integer :category, :null => false
      t.string :name, :null => false
      t.string :file, :null => false  
      t.integer :status, :null => false, :default => 1

      t.timestamps
    end

    create_table 'declares' do |t|
      t.text :content, :null => false    
      t.integer :status, :null => false, :default => 1

      t.timestamps
    end

    create_table 'provinces' do |t|
      t.string :name
      t.string :pinyin
      t.integer :sort
      
      t.timestamps
    end

    create_table 'cities' do |t|
      t.string :name
      t.string :pinyin
      t.integer :sort
      t.integer :province_id

      t.timestamps
    end

    create_table 'districts' do |t|
      t.string :name
      t.string :pinyin
      t.integer :sort
      t.integer :city_id

      t.timestamps
    end

  end
end
