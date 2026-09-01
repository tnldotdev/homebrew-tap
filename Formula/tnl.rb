class Tnl < Formula
  desc "Public urls for localhost"
  homepage "https://github.com/tnldotdev/tnl"
  version "0.1.0-rc.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tnldotdev/tnl/releases/download/v0.1.0-rc.5/tnl_0.1.0-rc.5_darwin_arm64.tar.gz"
      sha256 "4d70750acb6dbf6a9ca3bc8ac2b50544ca130da710b497dd10b22019f27457ee"
    end

    on_intel do
      url "https://github.com/tnldotdev/tnl/releases/download/v0.1.0-rc.5/tnl_0.1.0-rc.5_darwin_amd64.tar.gz"
      sha256 "69b848e97a8463edd45bd417ad7c629478b9c2a65499c4a6371de6178ad156c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tnldotdev/tnl/releases/download/v0.1.0-rc.5/tnl_0.1.0-rc.5_linux_arm64.tar.gz"
      sha256 "daccc8090e075f7de775150c5c5d4eecfb2ab6bb6e9cdcb4af71718db2d1ce39"
    end

    on_intel do
      url "https://github.com/tnldotdev/tnl/releases/download/v0.1.0-rc.5/tnl_0.1.0-rc.5_linux_amd64.tar.gz"
      sha256 "9a13754c7238a18c5d1583572c928d8b421150c772c30c5f32b0a05f71a6d8ab"
    end
  end

  def install
    bin.install "tnl", "tnld"
  end

  test do
    assert_match(/^tnl #{Regexp.escape(version.to_s)} \([0-9a-f]{40}\)$/, shell_output("#{bin}/tnl version").strip)
    assert_match(/^tnld #{Regexp.escape(version.to_s)} \([0-9a-f]{40}\)$/, shell_output("#{bin}/tnld version").strip)
  end
end
