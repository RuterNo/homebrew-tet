cask "tet-vehicle-display" do
    version "0.27.1"
    sha256 "36a64332e605a241937138ca58527f0b08215e374edca2004ce1666096e6972a"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.27.1.tar.gz"
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
