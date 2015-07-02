require 'rails_helper'

describe Repository do
  it { should validate_presence_of :repo_name }
  it { should validate_presence_of :repo_url }
  it { should validate_presence_of :description }
end
