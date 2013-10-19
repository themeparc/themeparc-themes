require 'spec_helper'

describe Theme do
  it {should validate_presence_of(:theme_title)}
  it {should validate_presence_of(:description)}
  it {should valudate_presence_of(:price)}
end