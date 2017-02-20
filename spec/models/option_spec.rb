require 'rails_helper'

describe Option do
  it {should have_many :comments}
  it {should validate_presence_of :answer_one}
  it {should validate_presence_of :answer_two}
end
