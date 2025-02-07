cask "tet-vehicle-display" do
    version "0.15.3"
    sha256 "8e97e4925b1bbfc07eb1fdfe2fd2a8c106f513ce7a941a4c6dc58e3d0871e2af"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.15.3.tar.gz"
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
