cask "tet-vehicle-display" do
    version "0.28.3"
    sha256 "13802aa5213ed35747169df6fae0f44fd5c799b8a40d687ddb2e7c8bbbff01f4"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.28.3.tar.gz"
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
