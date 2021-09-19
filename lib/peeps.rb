require 'pg'

class Peeps
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else  
      connection = PG.connect(dbname: 'chitter')
    end

    result = connection.exec("SELECT * FROM chitter;")
    result.map do |peep|
      peep['text']
    end
  end

  def self.create(text:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end
  
    connection.exec("INSERT INTO chitter (text) VALUES('#{text}')")
  end
end