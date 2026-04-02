cask "karpview" do
  version "0.2.0"

  on_arm do
    sha256 "2167428204a7f30f64943a654a3af5e0858a3a802461e532c677b5fc9d0a77b0"
    url "https://github.com/n-gibs/karpview/releases/download/v#{version}/karpview-darwin-arm64.tar.gz"
    binary "karpview-darwin-arm64", target: "karpview"
  end

  on_intel do
    sha256 "4af105565c23f13e9efdfb046bcf611753428b952e7b5ad86fcdfee26fa52c10"
    url "https://github.com/n-gibs/karpview/releases/download/v#{version}/karpview-darwin-amd64.tar.gz"
    binary "karpview-darwin-amd64", target: "karpview"
  end

  name "KarpView"
  desc "Karpenter node disruption visualizer"
  homepage "https://github.com/n-gibs/karpview"

  caveats <<~EOS
    karpview is not signed with an Apple Developer ID.
    If macOS blocks the binary, run:
      xattr -d com.apple.quarantine $(which karpview)
    Or go to System Settings > Privacy & Security and click "Allow Anyway".
  EOS
end
