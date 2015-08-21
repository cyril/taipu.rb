require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'taipu'
require 'spectus'

subject = Taipu::Number.new(min: 42)

Spectus.this { subject.valid?(42) }.MUST :BeTrue
Spectus.this { subject.valid?(100) }.MUST :BeTrue
Spectus.this { subject.valid?(4) }.MUST :BeFalse
Spectus.this { subject.valid?('foo') }.MUST :BeFalse

Spectus.this { subject.to_h }.MUST Eql: { min: 42, max: nil, type: :number }
