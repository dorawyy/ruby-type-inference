require 'date'
require '../../../resources/type_tracker.rb'

class A

end

class C

end

class B
  def test1

  end

  def test2

  end
end

A.class_eval <<Foo
def foo2(a)
  a
end
Foo

x = A.new.foo2(Date.new)
x = A.new.foo2(B.new).<caret>