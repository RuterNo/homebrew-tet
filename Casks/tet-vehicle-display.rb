cask "tet-vehicle-display" do
    version "0.13.0"
    sha256 "655b80581a067114d376f241416452c5218cefd02901839f5baf2fae3db3ec9a"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.13.0.tar.gz"
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
