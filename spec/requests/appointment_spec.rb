require 'spec_helper'

describe Appointment do


  it "schedule an appointemnt in form",  :js => true  do
    visit root_path
    click_button "Book"
  end
end

