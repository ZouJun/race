class Mentor < ActiveRecord::Base
  validates :name,:id_type,:id_number,:mobile,:email,:work_unit,:telephone,:nation, presence:true

  has_many :students

  acts_as_enum :gender, :in =>[
    ['unkonow',0,'未知'],
    ['male',1,'男'],
    ['female',2,'女']
  ]

  acts_as_enum :id_type, :in =>[
    ['passport', 1, '护照'],
    ['identity',2, '身份证']
  ]

  acts_as_enum :nation, :in =>[
    ['china',1,'中国'],
    ['japan',2,'日本'],
    ['usa',3,'美国']
  ]
end
