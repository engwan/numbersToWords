require 'echoe'

Echoe.new('numbers_to_words', '0.1.1') do |p|
  p.author         = "Engwan"
  p.summary        = "Helper methods to convert numbers to english words"

  p.ignore_pattern = ["tmp/*"]
end

require "rake"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = %w{--color -f\ s}
  t.verbose = true
end

task :default => :spec
