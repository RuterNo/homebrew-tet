cask "tet-vehicle-display" do
    version "0.15.8"
    sha256 "8cf9747305e2d996b917cdaa1853eff9b1a8c459bca79c14164ee616f4891ac8"
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
