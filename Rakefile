require 'emeril/rake_tasks'
require 'foodcritic'
require 'rspec/core/rake_task'

Emeril::RakeTasks.new do |t|
  t.config[:publish_to_community] = false
  t.config[:tag_prefix]           = false
end

FoodCritic::Rake::LintTask.new do |t|
  t.options = { :fail_tags => ['any'] }
end

task :default => [:foodcritic]
