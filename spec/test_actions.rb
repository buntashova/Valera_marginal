require_relative "../lib/valera.rb"
require_relative "../lib/actions.rb"

RSpec.describe Actions do
  act = Actions.new

  it "go to work" do
    val = Valera.new
    val.cheerfulness = 10
    val.mana = 50
    val.money = 20
    val.tired = 10

    act.go_to_work(val)

    expect(val.cheerfulness).to eq 5
    expect(val.mana).to eq 20
    expect(val.money).to eq 120
    expect(val.tired).to eq 80
  end

  it "watch nature" do
    val = Valera.new
    val.cheerfulness = 8
    val.mana = 50
    val.tired = 10

    act.watch_nature(val)

    expect(val.cheerfulness).to eq 9
    expect(val.mana).to eq 40
    expect(val.tired).to eq 20
  end

  it "netflix 'n' wine" do
    val = Valera.new
    val.cheerfulness = 10
    val.mana = 50
    val.tired = 10
    val.health = 90
    val.money = 70

    act.netflix_n_wine(val)

    expect(val.cheerfulness).to eq 9
    expect(val.mana).to eq 80
    expect(val.tired).to eq 20
    expect(val.health).to eq 85
    expect(val.money).to eq 50
  end

  it "go to bar" do
    val = Valera.new
    val.cheerfulness = 5
    val.mana = 0
    val.tired = 10
    val.health = 90
    val.money = 120

    act.go_to_bar(val)

    expect(val.cheerfulness).to eq 6 # 6, val.cheerfulness
    expect(val.mana).to eq 60 # 60, val.mana
    expect(val.tired).to eq 50 # 50, val.tired
    expect(val.health).to eq 80 # 80, val.health
    expect(val.money).to eq 20 # 20, val.money
  end

  it "drink with marginals" do
    val = Valera.new
    val.cheerfulness = 5
    val.mana = 0
    val.tired = 10
    val.health = 90
    val.money = 900

    act.drink_with_marginals(val)

    expect(val.cheerfulness).to eq 10 # 10, val.cheerfulness
    expect(val.mana).to eq 90 # 90, val.mana
    expect(val.tired).to eq 90 # 90, val.tired
    expect(val.health).to eq 10 # 10, val.health
    expect(val.money).to eq 750 # 750, val.money
  end

  it "sing in subway" do
    val = Valera.new
    val.cheerfulness = 5
    val.mana = 0
    val.tired = 10
    val.money = 200

    act.sing_in_subway(val)

    expect(val.cheerfulness).to eq 6 # 6, val.cheerfulness
    expect(val.mana).to eq 10 # 10, val.mana
    expect(val.tired).to eq 30 # 30, val.tired
    expect(val.money).to eq 210 # 210, val.money
  end

  it "sing in subway drunk" do
    val = Valera.new
    val.cheerfulness = 5
    val.mana = 50
    val.tired = 10
    val.money = 200

    act.sing_in_subway(val)

    expect(val.cheerfulness).to eq 6 # 6, val.cheerfulness
    expect(val.mana).to eq 60 # 60, val.mana
    expect(val.tired).to eq 30 # 30, val.tired
    expect(val.money).to eq 260 # 260, val.money
  end

  it "sleep sober" do
    val = Valera.new
    val.health = 5
    val.mana = 20
    val.tired = 90

    act.sleep(val)

    expect(val.health).to eq 95 # 95, val.health
    expect(val.mana).to eq 0 # 0, val.mana
    expect(val.tired).to eq 20 # 20, val.tired
  end

  it "sleep drunk" do
    val = Valera.new
    val.mana = 60
    val.tired = 90

    act.sleep(val)

    expect(val.mana).to eq 10 # 10, val.mana
    expect(val.tired).to eq 20 # 20, val.tired
  end

  it "sleep very drunk" do
    val = Valera.new
    val.cheerfulness = 5
    val.mana = 80
    val.tired = 90

    act.sleep(val)

    expect(val.cheerfulness).to eq 2 # 2, val.cheerfulness
    expect(val.mana).to eq 30 # 30, val.mana
    expect(val.tired).to eq 20 # 20, val.tired
  end
end
