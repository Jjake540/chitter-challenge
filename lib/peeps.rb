require 'pg'

class Peeps
  def self.all
    connection = PG.connect(dbname: 'chitter')
    result = connection.exec("SELECT * FROM chitter;")
    result.map do |peep|
      peep['text']
    end
  end
end