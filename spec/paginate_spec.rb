require 'pageitin'
require 'spec_helper'

RSpec.describe Pageitin do

  it "should add the paginate method to ActiveRecord::Base" do
    expect(ActiveRecord::Base.methods).to include :paginate
  end
end
