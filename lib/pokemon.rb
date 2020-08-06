class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id= id
    @name = name
    @type = type
    @db = db

end

def self.save(name, type, db)
   db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

def self.find(id,db)
 store =   db.execute("SELECT * FROM pokemon WHERE id = #{id}").flatten
 pokemon.new(id: store[0],name: store[1], type: store[2], self.db)

end

end
