require "ecr/processor"

filename = ARGV[0]
buffer_name = ARGV[1]

begin
  puts ECR.process_file(filename, buffer_name)
rescue ex : File::Error
  STDERR.puts "Error in ECR processor:"
  ex.inspect_with_backtrace(STDERR)
  exit 1
end
