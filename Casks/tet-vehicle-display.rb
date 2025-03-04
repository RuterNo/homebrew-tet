cask "tet-vehicle-display" do
    version "0.17.2"
    sha256 "24cadb67db271f6d2c199c9336e96d24dfd3fda7019a1f5e0abef55c76cb173b"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.17.2.tar.gz"
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
