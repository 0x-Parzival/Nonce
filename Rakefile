# -*- ruby -*-

require 'rubygems'
require 'hoe'
require 'need'
require 'spec/rake/spectask'
need{'./lib/nonce.rb'}

Hoe.new('nonce', '0.1.1') do |p|
  p.rubyforge_name = 'nonce'
  p.author = 'Drew Olson'
  p.email = 'drew@drewolson.org'
  p.summary = 'tool for building DSLs with blocks'
  p.description = p.paragraphs_of('README.txt', 2..5).join("\n\n")
  p.changes = p.paragraphs_of('History.txt', 0..1).join("\n\n")
  p.extra_deps << ['need', '>= 1.0.1']
  p.extra_deps << ['rspec', '>= 1.1.3']
  p.remote_rdoc_dir = ''
end

Spec::Rake::SpecTask.new do |t|
  t.warning = true
end

# vim: syntax=Ruby
