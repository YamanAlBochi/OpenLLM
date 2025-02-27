# Generated by tools/update-brew-tap.py. DO NOT EDIT!
# Please refers to the original template file Formula/openllm.rb.j2
# vim: set ft=ruby:
class Openllm < Formula
  desc "OpenLLM: Operating LLMs in production"
  homepage "https://github.com/bentoml/OpenLLM"
  version "0.4.28"
  license "Apache-2.0"
  head "https://github.com/bentoml/OpenLLM, branch: main"
  url "https://github.com/bentoml/OpenLLM/archive/v0.4.28.tar.gz"
  sha256 "1888bb775ec2c4c3e7b6795372c8cff0a342ced9764da454db59f50335626555"

  on_linux do
    url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.28/openllm-0.4.28-x86_64-unknown-linux-musl.tar.gz"
    sha256 "44c2229a6cac7a9fc66b3579625e04455d6efeb2220f323196683ab703b28c5d"
  end
  on_macos do
    on_arm do
      url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.28/openllm-0.4.28-aarch64-apple-darwin.tar.gz"
      sha256 "0dafc39a586af389f9a4354f531591774a2f2cb3a2c7477d475f6e3e4a5aa0a4"
    end
    on_intel do
      url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.28/openllm-0.4.28-x86_64-apple-darwin.tar.gz"
      sha256 "71d305c65e39f31f9e594d8a5607f8e8c4038c2d50371e6c12cb2d317fa46c6e"
    end
  end

  def install
    on_linux do
      bin.install "openllm-0.4.28-x86_64-unknown-linux-musl" => "openllm"
    end
  on_macos do
    on_arm do
      bin.install "openllm-0.4.28-aarch64-apple-darwin" => "openllm"
    end
    on_intel do
      bin.install "openllm-0.4.28-x86_64-apple-darwin" => "openllm"
    end
  end
    ohai "To get started, run: 'openllm --help'"
    ohai "To see supported models, run: 'openllm models'"
  end

  test do
    shell_output "#{bin}/openllm --version"
  end
end
