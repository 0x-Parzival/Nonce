require 'rubygems'
require 'need'
need{"../lib/nonce"}

class Foo
  include Nonce
  
  def is_foo?
    true
  end
end
