cask "tet-vehicle-display" do
    version "0.13.0"
    sha256 "0e4c088f2d30bd802be3912148442b6b06bc50e1c98f25035431eac7f2f281b5"
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
