cask "tet-vehicle-display" do
    version "0.29.1"
    sha256 "61cf5d53b4a74fbcf25cb9f480dd6efa458e2fc44923ad3780ba46cb820f54d4"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.29.1.tar.gz"
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
