require 'spec_helper'

describe Search do
  it "returns associated shop" do
  end

  it "knows the number of nights for the stay" do
  end

  it "can unassociate itself from any results" do
  end

  it "returns the estimated check in/out date & number of adults/room for a given user" do
    search = create(:search)
    expect(search.suggested_check_in).not_to be_nil
    expect(search.suggested_check_out).not_to be_nil
    expect(search.suggested_adults).not_to be_nil
  end
end
