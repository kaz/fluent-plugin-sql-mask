require "helper"
require "fluent/plugin/filter_sql_mask.rb"

class SqlMaskFilterTest < Test::Unit::TestCase
  setup do
    Fluent::Test.setup
  end

  test "failure" do
    flunk
  end

  private

  def create_driver(conf)
    Fluent::Test::Driver::Filter.new(Fluent::Plugin::SqlMaskFilter).configure(conf)
  end
end
