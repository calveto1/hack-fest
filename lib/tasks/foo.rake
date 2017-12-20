require "rake/testtask.rb"
require 'pp'

Rake::TestTask.new("test:pipeline") do |t|
  pipeline_index = ENV['PIPELINE']
  pipelines = JSON.parse(File.read(File.join(Rails.root.to_s, "pipeline_files.json")))
  puts "-----------------------------------------------------"
  pp pipelines
  puts "-----------------------------------------------------"
  files = pipelines[pipeline_index]

  t.libs << 'test'
  t.verbose = true
  t.test_files = files
end

Rake::Task['test:pipeline'].comment = "Runs tests for the specified pipeline"
