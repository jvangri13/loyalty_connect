require "test_helper"
require "loyalty_connect"

module LoyaltyConnect
  describe UrlHelper do

    describe "standard operation" do
      before do
        @url_helper = UrlHelper.new 18, true
      end

      it "creates rewards URLs" do
        assert_equal "/api/consumers/18/rewards?translate=1", @url_helper.rewards
      end

      it "creates reward detail URLs" do
        assert_equal "/api/consumers/18/rewards/15?translate=1", @url_helper.reward(15)
      end

      it "creates transactions URLs" do
        assert_equal "/api/consumers/18/transactions?translate=1", @url_helper.transactions
      end

      it "creates transaction detail URLs" do
        assert_equal "/api/consumers/18/transactions/16?translate=1", @url_helper.transaction(16)
      end

      it "creates activity URLs" do
        assert_equal "/api/consumers/18/activity?translate=1", @url_helper.activity
      end

      it "creates create_user URLs" do
        assert_equal "/api/consumers?translate=18", @url_helper.create_user
      end

      it "creates delete_user URLs" do
        assert_equal "/api/consumers/18?translate=1", @url_helper.delete_user
      end

      it "creates show user URLs" do
        assert_equal "/api/consumers/18?translate=1", @url_helper.show
      end

      it "creates credit cards URLs" do
        assert_equal "/api/consumers/18/credit_cards?translate=1", @url_helper.cards
      end

      it "creates create credit cards URLs" do
        assert_equal "/api/consumers/18/credit_cards?translate=1", @url_helper.create_credit_card
      end

      it "creates credit card detail URLs" do
        assert_equal "/api/consumers/18/credit_cards/17?translate=1", @url_helper.card(17)
      end

      it "creates delete credit card URLs" do
        assert_equal "/api/consumers/18/credit_cards/17?translate=1", @url_helper.delete_credit_card(17)
      end

      it "creates new credit cards URLs" do
        assert_equal "/api/consumers/18/credit_cards/new?translate=1", @url_helper.new_credit_card
      end
    end

    describe "without translation" do
      it "optionally does not include the translate param" do
        url_helper = UrlHelper.new 18, false
        refute_match /translate/i, url_helper.rewards
      end
    end
  end
end
