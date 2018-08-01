HOMEBREW_EPAYC_HACKER_VERSION="0.0.1"

class EpaycHacker < Formula
  desc "auto input tool of epayc kintai"
  homepage "https://gitlab.devsep.com/h_hori/epayc-hacker"
  url "https://gitlab.devsep.com/h_hori/epayc-hacker/raw/#{HOMEBREW_EPAYC_HACKER_VERSION}/epayc-hacker"
  sha256 "a02a887672c6ee7f4dd140cfb8e409498194d4912aeb552ea6f9512fdbca8193"
  version HOMEBREW_EPAYC_HACKER_VERSION

  def install
    bin.install "epayc-hacker"
  end

  def caveats
    msg = <<~EOF
    # rnzoo need AWS access key for working.
    # Please set environment variable for AWS connection.
    # (~/.bashrc, ~/.zshrc or other.)

    export AWS_ACCESS_KEY_ID="YOUR AWS ACCESS KEY"
    export AWS_SECRET_ACCESS_KEY="YOUR AWS SECRET ACCESS KEY"

    # Option: you can set default aws region.

    export AWS_REGION="ap-northeast-1"
EOF
  end
end
