require 'mdb'

describe MDB::DB do
  it "we can do something with a db" do
    MDB::DB.open("").tables should eql("")
  end

end
