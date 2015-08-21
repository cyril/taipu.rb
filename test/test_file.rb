require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'taipu'
require 'spectus'

subject = Taipu::File.new

Spectus.this { subject.valid?(STDIN) }.MUST :BeTrue
Spectus.this { subject.valid?('foo') }.MUST :BeFalse

Spectus.this { subject.to_h }.MUST Eql: { type: :file }
