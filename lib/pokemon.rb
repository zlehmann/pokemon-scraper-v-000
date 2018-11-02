class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)

  end

  def save
    :db.execute("INSERT INTO ")
  end
end
