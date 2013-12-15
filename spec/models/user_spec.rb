require 'spec_helper'

describe User do
  it { should belong_to :team }
  it { should have_many :comments }
end
