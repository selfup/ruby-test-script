class RunAllTests
  attr_reader :find_test_files, :make_a_test_array, :cd_back

  def initialize
    @find_test_files = find_test_files
    @make_a_test_array = make_a_test_array
    @cd_back = cd_back
  end

  def find_test_files
    `cd "test" && ls`
  end

  def make_a_test_array
    find_test_files.split("\n")
  end
  
  def cd_back
    `cd ".."`
  end

  def run_the_tests
    make_a_test_array.map do |run_test|
      if run_test == 'coverage'
        puts "ignoring coverage folder"
      else
        puts "test/#{run_test}"
        puts `ruby "test/#{run_test}"`
      end
    end
  end
end

RunAllTests.new.run_the_tests
