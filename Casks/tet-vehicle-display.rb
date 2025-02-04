cask "tet-vehicle-display" do
    version "0.14.1"
    sha256 "b7ed53edbd34b259cf1484bc8247f581c4994b5f12e4d2de6da819d2417dd7b0"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.14.1.tar.gz"
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
