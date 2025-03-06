cask "tet-vehicle-display" do
    version "0.17.4"
    sha256 "54d216db08a3d0a5a317665e66285848188f6acac2bb4510d5dc8ddca0ce963d"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.17.4.tar.gz"
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
