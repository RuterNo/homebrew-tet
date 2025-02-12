cask "tet-vehicle-display" do
    version "0.15.8"
    sha256 "b1aa72b2cbf1c4f44260f4c600d8981a9101a1df6b7b92586af6ec76a6387a06"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.15.8.tar.gz"
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
