cask "tet-vehicle-display" do
    version "0.13.1"
    sha256 "4595c63cfeb4ffc450a315eb3a7647bdce41ceb46475d7770ce059992ae7927a"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.13.1.tar.gz"
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
