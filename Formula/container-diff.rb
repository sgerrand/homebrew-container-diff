class ContainerDiff < Formula
  desc "Diff your Docker containers"
  homepage "https://github.com/GoogleCloudPlatform/container-diff"
  url "https://storage.googleapis.com/container-diff/v0.5.1/container-diff-darwin-amd64"
  version "0.5.1"
  sha256 "ff8d25a149fb239bd31c1b5869a3512e655f5d153896e430aa34fb9bd213edc4"

  head "https://github.com/GoogleCloudPlatform/container-diff.git"

  devel do
    url "https://storage.googleapis.com/container-diff/latest/container-diff-darwin-amd64"
  end

  def install
    mv "container-diff-darwin-amd64", "container-diff"
    bin.install ["container-diff"]
  end

  test do
    assert_match "v0.5.1". shell_output("#{bin}/container-diff version", 2)
  end
end
