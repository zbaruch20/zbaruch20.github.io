# Simple script to create certain files from names in a file.

# There are two ways to run this script:
# 1. Manually edit the values for +FILE_NAME+, +PREFIX+, and +EXTENSION+ in this file
# 2. Include these values as command-line arguments, with the order being FILE_NAME, PREFIX, EXTENSION.
#    You can also include a 4th argument to include a filler line

FILE_NAME = ARGV[0] || 'helpers/proj_ids.txt'.freeze
PREFIX = ARGV[1] || 'source/layouts/projects/_'.freeze
EXTENSION = ARGV[2] || '.html.md.erb'.freeze

names = IO.readlines FILE_NAME, chomp: true
names.each do |n|
  fname = PREFIX + n + EXTENSION
  File.open("#{PREFIX}#{n}#{EXTENSION}", 'a+') do |f|
    f.puts ARGV[3] if ARGV[3] && File.empty?(fname) # Add 4th command-line arg to file if present and file is empty
  end
end
