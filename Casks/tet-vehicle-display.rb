cask "tet-vehicle-display" do
    version "0.18.2"
    sha256 "67fc7b435d5e95454d13b57f6834244eeedb768f2694eeffbfbf304c6068c9c2"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.18.2.tar.gz"
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
