cask "tet-vehicle-display" do
    version "0.21.0"
    sha256 "ac9d3a328ba162a1fdbfac6bd59493fd2cb4e8268d13dd3c39e96434683da2b3"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.21.0.tar.gz"
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
