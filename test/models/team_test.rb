require 'test_helper'

class TeamTest < ActiveSupport::TestCase

  def setup
    @team = Team.new(name: "Aces", location: "Reno, NV", abbr: "RAC", conference: "MiLB", division: "nl west", url: "www.aces.com/")
  end

  test "should be valid" do
    assert @team.valid?
  end

  test "name should be present" do
    @team.name = "  "
    assert_not @team.valid?
  end

  test "abbreviation should be present" do
    @team.abbr = "  "
    assert_not @team.valid?
  end

  test "conference should be present" do
    @team.conference = "  "
    assert_not @team.valid?
  end

  test "division should be present" do
    @team.division = "  "
    assert_not @team.valid?
  end

end
