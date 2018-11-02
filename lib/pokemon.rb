require 'pry'
class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);", name, type)
  end

  def self.find(id, db)
    #binding.pry
    result = db.execute("SELECT * FROM pokemon WHERE pokemon.id = id;")
    #binding.pry
    new_pokemon = Pokemon.new(id: result[0][0], name: result[0][1], type: result[0][2], db: db)
  end

  def self.alter_hp(hp, db)
    db.execute_alter_table_migration.sql
  end
end
