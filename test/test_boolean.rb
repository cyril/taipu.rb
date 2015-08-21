require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'taipu'
require 'spectus'

subject = Taipu::Boolean.new

Spectus.this { subject.valid?(true) }.MUST :BeTrue
Spectus.this { subject.valid?(false) }.MUST :BeTrue
Spectus.this { subject.valid?('foo') }.MUST :BeFalse

Spectus.this { subject.to_h }.MUST Eql: { type: :boolean }
