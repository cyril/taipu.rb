# Namespace for the Taipu library.
module Taipu
end

Dir[File.join File.dirname(__FILE__), 'taipu', '*.rb'].each do |filename|
  require_relative filename
end
