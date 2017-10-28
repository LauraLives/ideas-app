require "rails_helper"

# Specs in this file have access to a helper object that includes
# the IdeasHelper. For example:
#
# describe IdeasHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe IdeasHelper, type: :helper do
  describe "naughty_filter" do
    it "filters poop" do
      expect(naughty_filter("poop")).to eq("shit")
    end
    it "filters out only naughty words" do
      expect(naughty_filter("I like poop")).to eq("I like shit")
    end
    it "filters out many naughty words" do
      expect(naughty_filter("poop poop")).to eq("shit shit")
    end
  end
end
