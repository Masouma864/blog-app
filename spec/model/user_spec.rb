require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Kareem', PostsCounter: 10) }

  before { subject.save }

  it 'Name of user must not be blank.' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'CommentsCounter must be greater than or equal to zero.' do
    subject.PostsCounter = -1
    expect(subject).to_not be_valid
  end
end
