cask "tet-vehicle-display" do
    version "0.17.0"
    sha256 "cfbd7528fe45248802ff5a89116a34e6899feaa93f05b975357d49a979bd1a8c"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.17.0.tar.gz"
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
