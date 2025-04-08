cask "tet-vehicle-display" do
    version "0.19.0"
    sha256 "ccd51c0cecbc9cf7dc6f5af1be3299cd3040dc9fa979402f31cb2ba9bf548f8c"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.19.0.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://pto-api.transhub.io/vdtools/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'target/mac-universal/release/vdloader'
    binary 'target/mac-universal/release/findmyvehicle'
end
