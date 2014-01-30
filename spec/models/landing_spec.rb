require 'spec_helper'

describe Landing do
  it { should respond_to(:name) }
  it { should respond_to(:account_id) }

  it { should respond_to(:account) }
  it { should respond_to(:leads) }
  it { should respond_to(:statuses) }
end
