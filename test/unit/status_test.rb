require 'test_helper'

class StatusTest < ActiveSupport::TestCase

	test "status req content" do 
		status = Status.new
		assert !status.save
		assert !status.errors[:content].empty?
		
	end


		test "status must have a user" do
			status = Status.new
			status.content = "hello"
			assert !status.save
			assert !status.errors[:user_id].empty?
		end
end
