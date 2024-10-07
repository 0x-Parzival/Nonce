require 'rubygems'
require 'need'
need{"../lib/nonce"}

class Foo
  include Nonce
  
  def is_foo?
    true
  end
  
  def call_block &block
    block.call
  end
end
