cask "tet-vehicle-display" do
    version "0.28.2"
    sha256 "c8b692506bc20e2bff6509604c514be1c20744525daeda85553c53eb75812793"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.28.2.tar.gz"
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
