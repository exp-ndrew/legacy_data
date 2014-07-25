require('rspec')
require('legacy')

describe('legacy') do
  it('makes element 0 in the old value array into a new key in a new hash') do
    legacy({1 => ["A"]}).should(eq({"A" => 1}))
  end

  it('makes each element in the old value array into a new key in a new hash') do
    legacy({1 => ["A", "E", "I", "O", "U"]}).should(eq({"A"=>1, "E"=>1, "I"=>1, "O"=>1, "U"=>1}))
  end
end


