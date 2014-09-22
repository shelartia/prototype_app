require 'spec_helper'

describe Task do
  let(:user) { FactoryGirl.create(:user) }
  before do
    @task = user.projects.tasks.build(name: "Example Task", status: "done", project_id: 1)
  end

  subject { @task  }

  it { should respond_to(:name) }
  it { should respond_to(:status) }
  it { should respond_to(:project_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }
  it { should be_valid }
  
  describe "when name is not present" do
    before { @task.name = " " }
    it { should_not be_valid }
  end
  
  describe "when project_id is not present" do
    before { @task.project_id = nil }
    it { should_not be_valid }
  end
end
