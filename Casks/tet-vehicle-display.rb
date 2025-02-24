cask "tet-vehicle-display" do
    version "0.16.0"
    sha256 "aa03a7abd6e871a6136804ee3991eb0e9f4b59f26c0c33c0df5604fc1561b0cd"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.16.0.tar.gz"
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
