cask "tet-vehicle-display" do
    version "0.23.0"
    sha256 "a571dbb424774844e16ba25337cbf5cc8bba3e764e0515dc4733fd911c5e4e07"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.23.0.tar.gz"
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
