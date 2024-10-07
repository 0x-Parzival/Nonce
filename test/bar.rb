require 'rubygems'
require 'need'
need{"../lib/nonce"}

class Bar
  include BlockChainable
  
  def is_bar?
    true
  end
end
