cask "tet-vehicle-display" do
    version "0.18.1"
    sha256 "df174a6c73510aa398d9d2f5ebb4c312c6a8e367fa985c4de41b442b37b6dc35"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.18.1.tar.gz"
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
