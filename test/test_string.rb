require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'taipu'
require 'spectus'

subject = Taipu::String.new(minlen: 3, maxlen: nil, pattern: nil)

Spectus.this { subject.valid?('foo') }.MUST :BeTrue
Spectus.this { subject.valid?('fo') }.MUST :BeFalse
Spectus.this { subject.valid?(4) }.MUST :BeFalse

Spectus.this { subject.to_h }.MUST Eql: { minlen: 3, maxlen: nil, pattern: nil, type: :string }
