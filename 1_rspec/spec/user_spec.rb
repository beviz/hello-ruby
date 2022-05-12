Bundler.require :default

RSpec.describe User do
  describe '#valid?' do
    subject { User.new username }
    before { User.destroy_all }

    context 'with valid username' do
      let(:username) { 'marfa' }
      it { should be_valid }
    end

    context 'with invalid token' do
      let(:username) { 'ab' }
      it { should_not be_valid }
      it { expect(user.name).not_to be_valid }
    end
  end
end
