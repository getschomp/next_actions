require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:blanks) { ["", nil] }

  it { should have_valid(:title).when('a title') }
  it { should_not have_valid(:title).when(*blanks) }

  it { should have_valid(:user).when(User.new) }
  it { should_not have_valid(:user).when(nil) }

  it { should belong_to :user}
end
