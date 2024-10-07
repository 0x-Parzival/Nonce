require 'rubygems'
require 'need'
need{"../lib/nonce"}

class Bar
  include Nonce
  
  def is_bar?
    true
  end
end
