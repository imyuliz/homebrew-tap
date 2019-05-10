class KubectlSwitch < Formula
  desc "Kubernetes multi-cluster command-line management tool"
  homepage "https://github.com/yulibaozi/kubectl-switch"
  url "https://github.com/yulibaozi/kubectl-switch/releases/download/v1.0.0/kubectl-switch_1.0.0_darwin_amd64.tar.gz"
  version "1.0.0"
  sha256 "854f953c96418ea516a6264d8408e59c814c54615b2a40ea25f32c05003ab314"
  head "https://github.com/yulibaozi/kubectl-switch.git"

  depends_on "kubernetes-cli"

  def install
    bin.install "kubectl-switch"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/kubectl-switch -h 2>&1")
  end
end
