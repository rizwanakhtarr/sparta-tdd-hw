require_relative "spec_helper"

describe 'Create tests for a hash example' do

  before(:each) do
  @first_test = ParseJSON.new("json_exchanges_rates.json")
  end


  it "should have a value EUR for key base" do
    expect(@first_test.json_file["base"]).to eq("EUR")
  end

  it "should have a value of 2017-07-26 for the key date" do
    expect(@first_test.json_file["date"]).to eq("2017-07-26")
  end

  it "should have a value for all the rates as a float" do
    expect(@first_test.json_file["rates"].values).to all(be_an(Float))
  end
  it "should have a key for all the ates as a string" do
    expect(@first_test.json_file["rates"].keys).to all(be_an(String))
  end
  it "should have a length for rates being equal to 31" do
    expect(@first_test.json_file["rates"].length).to eq(31)
  end


end
