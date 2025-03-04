cask "tet-vehicle-display" do
    version "0.17.3"
    sha256 "e008392e4a1c7ef40b6aca68839ae3456cd49d4d315cb822b659ae2b8eecedb2"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.17.3.tar.gz"
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
