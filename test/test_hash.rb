require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'taipu'
require 'spectus'

subject = Taipu::Hash.new

Spectus.this { subject.valid?({}) }.MUST :BeTrue
Spectus.this { subject.valid?('foo') }.MUST :BeFalse

Spectus.this { subject.to_h }.MUST Eql: { type: :hash }
