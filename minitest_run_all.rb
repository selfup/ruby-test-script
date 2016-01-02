test_files = `cd "test" && ls`

test_map = test_files.split("\n")

`cd ".."`

test_map.map do |run_test|
  if run_test == 'coverage'
    puts "ignoring coverage folder"
  else
    puts "test/#{run_test}"
    puts `ruby "test/#{run_test}"`
  end
end
