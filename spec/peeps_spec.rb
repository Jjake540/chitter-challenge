require 'peeps'

describe Peeps do
  describe '.all' do
    it 'returns all peeps' do
      connection = PG.connect(dbname: 'chitter_test')

      connection.exec("INSERT INTO chitter (text) VALUES ('My first peep');")
      connection.exec("INSERT INTO chitter (text) VALUES ('My second peep');")

      peeps = Peeps.all

      expect(peeps).to include("My first peep")
      expect(peeps).to include("My second peep")
    end
  end

  describe '.create' do
    it 'post a peep' do
      Peeps.create(text: 'Test')
  
      expect(Peeps.all).to include 'Test'
    end
  end

end


