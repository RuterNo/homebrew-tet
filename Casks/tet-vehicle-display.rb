cask "tet-vehicle-display" do
    version "0.31.0"
    sha256 "5a7fb8b83f67f9577e7503d27c37300ce60fada070d8ea55e1861f7b5b539e1b"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.31.0.tar.gz"
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
