require 'spec_helper'

describe Task do
  it { should belong_to :team }
  it { should have_many :comments }
end
