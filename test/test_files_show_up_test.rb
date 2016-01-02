require 'minitest/autorun'
require 'minitest/pride'
require_relative '../minitest_run_all'

class TestFilesShowUp < Minitest::Test

  def setup
    RunAllTests.new
  end

	def it_can_show_this_test_file
		test_files = setup.find_test_files
    
    assert_equal "test_files_show_up_test.rb", test_files[0..25]
  end
end
