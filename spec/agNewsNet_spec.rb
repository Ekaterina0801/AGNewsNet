require 'agNewsNet'
require 'rspec'


text1 = "MEMPHIS, Tenn. – Four days ago, Jon Rahm was \t
    enduring the season’s worst weather conditions on Sunday at The \t
    Open on his way to a closing 75 at Royal Portrush, which \t
    considering the wind and the rain was a respectable showing. \t
    Thursday’s first round at the WGC-FedEx St. Jude Invitational \t
    was another story. With temperatures in the mid-80s and hardly any \t
    wind, the Spaniard was 13 strokes better in a flawless round. \t
    Thanks to his best putting performance on the PGA Tour, Rahm \t
    finished with an 8-under 62 for a three-stroke lead, which \t
    was even more impressive considering he’d never played the \t
    front nine at TPC Southwind." #2
text2 = "'Teenage T. rex's monster growth,Tyrannosaurus rex achieved its massive size due to an enormous growth spurt during its adolescent years."#4
text3 = "Fears for T N pension after talks,Unions representing workers at Turner   Newall say they are 'disappointed' after talks with stricken parent firm Federal Mogul." #3
text4 = "West Mulls Boundries for African Fighting (AP),'AP - As the month-end deadline nears for Sudan to disarm the mostly Arab pro-government militias in Darfur, the United Nations and Western powers are in a dilemma over how far to go to stop the killing in an African country."#1
path1 = File.expand_path("../spec/file1.txt", __dir__)
path2 = File.expand_path("../spec/file2.txt", __dir__)
path3 = File.expand_path("../spec/file3.txt", __dir__)
path4 = File.expand_path("../spec/file4.txt", __dir__)

network = AGNews::Net.new(batch_size:5)
network.createModel

RSpec.describe AGNews do

  it "Test 1" do
    expect(network.makePredictionFromString(text1)).to eq("Sports")
  end

  it "Test 2" do
    expect(network.makePredictionFromString(text2)).to eq("Sci/Tec")
  end

  it "Test 3" do
    expect(network.makePredictionFromString(text3)).to eq("Business")
  end

  it "Test 4" do
    expect(network.makePredictionFromString(text4)).to eq("World")
  end

  it "Test 5" do
    expect(network.makePredictionFromFile(path1)).to eq("Business")
  end

  it "Test 6" do
    expect(network.makePredictionFromFile(path2)).to eq("World")
  end

  it "Test 7" do
    expect(network.makePredictionFromFile(path3)).to eq("Sports")
  end

  it "Test 8" do
    expect(network.makePredictionFromFile(path4)).to eq("Sci/Tec")
  end

end
