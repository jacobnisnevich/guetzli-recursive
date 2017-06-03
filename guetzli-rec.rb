#!/usr/bin/ruby

files = Dir.glob("**/*")
mem = ARGV[0] || 6000

files.each do |file|
  if file.end_with?(".jpg") || file.end_with?(".jpeg")
    print "Compressing #{file}...\n"
    `./guetzli --memlimit #{mem} "#{file}" "#{file}"`
  end
end
