class KubectlSwitch < Formula
  desc "Kubernetes multi-cluster command-line management tool"
  homepage "https://github.com/yulibaozi/kubectl-switch"
  url "https://github.com/yulibaozi/kubectl-switch/releases/download/v1.0.1/kubectl-switch_1.0.1_darwin_amd64.tar.gz"
  version "1.0.0"
  sha256 "d37b69e2c3c3139fa0f965e9798ef88196cbcf0cf33f6c7bd64e097d4498e06f"
  head "https://github.com/yulibaozi/kubectl-switch.git"

  # depends_on "kubernetes-cli"

  def install
    bin.install "kubectl-switch"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/kubectl-switch -h 2>&1")
  end
end
