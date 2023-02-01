require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Validations For the Comment model' do
    before(:each) do
      @comment = Comment.new(text: 'Future programmer')
    end
    before { @comment }

    it 'for title when present' do
      @comment.text = nil
      expect(@comment).to_not be_valid
    end
  end
end
