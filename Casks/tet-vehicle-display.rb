cask "tet-vehicle-display" do
    version "0.24.0"
    sha256 "b9ae157633fbb7db633b0b85e77a960664dd1d1969fec974d677875a12ac9707"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.24.0.tar.gz"
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
