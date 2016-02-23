require 'rails_helper'

RSpec.describe 'Sending mail via Device', type: :mailer do
  let(:user) { FactoryGirl.create(:user) }
  before { visit new_user_session_path }

  it 'Forgot password mail' do
    click_link 'Forgot your password?'
    fill_in 'Email', with: user.email
    click_button 'Send me reset password instructions'
    expect(page).to have_content 'You will receive an email'

    expect(ActionMailer::Base.deliveries.size)
  end
end
