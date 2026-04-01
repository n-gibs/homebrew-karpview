cask "karpview" do
  version "0.1.1"

  on_arm do
    sha256 "7a99c89a7f681994353b37c1466dcf1e5c1d522e4db923d2d99af392ae101906"
    url "https://github.com/n-gibs/karpview/releases/download/v#{version}/karpview-darwin-arm64.tar.gz"
    binary "karpview-darwin-arm64", target: "karpview"
  end

  on_intel do
    sha256 "522095abc8c5277cdf679d6f412148e21c590cbc30facfbe6e49eca86bb348ab"
    url "https://github.com/n-gibs/karpview/releases/download/v#{version}/karpview-darwin-amd64.tar.gz"
    binary "karpview-darwin-amd64", target: "karpview"
  end

  name "KarpView"
  desc "Karpenter node disruption visualizer"
  homepage "https://github.com/n-gibs/karpview"
end
