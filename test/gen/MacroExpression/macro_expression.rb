# Generated by ffi-gen. Please do not change this file by hand.

require 'ffi'

module MacroExpression
  extend FFI::Library
  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end
  
  A = (1<<2)#
  
  B = (1+2+3)#
  
  C = (A*B)#
  
  D = (C+(1)+1)#
  
  E = 1  #0x1
  
end
