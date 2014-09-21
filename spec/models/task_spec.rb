require 'spec_helper'

describe Task do
  before do
    @task = Task.new(name: "Example Task", status: "done", project_id: 1)
  end

  subject { @task  }

  it { should respond_to(:name) }
  it { should respond_to(:status) }
  it { should respond_to(:project_id) }
end
