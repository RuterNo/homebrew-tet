cask "tet-vehicle-display" do
    version "0.29.0"
    sha256 "3935e45213138c82fdb48a60e9c326df5677dbe7e17a3a6b01bdb86256a20371"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.29.0.tar.gz"
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
