require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'taipu'
require 'spectus'

Spectus.this do
  Taipu::Array.new.to_h
end.MUST Eql: { type: :array }

Spectus.this do
  Taipu::Boolean.new.to_h
end.MUST Eql: { type: :boolean }

Spectus.this do
  Taipu::File.new.to_h
end.MUST Eql: { type: :file }

Spectus.this do
  Taipu::Hash.new.to_h
end.MUST Eql: { type: :hash }

Spectus.this do
  Taipu::Number.new(min: 42).to_h
end.MUST Eql: { min: 42, max: nil, type: :number }

Spectus.this do
  Taipu::String.new(minlen: 42, maxlen: nil, pattern: nil).to_h
end.MUST Eql: { minlen: 42, maxlen: nil, pattern: nil, type: :string }
