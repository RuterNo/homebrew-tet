cask "tet-vehicle-display" do
    version "0.14.0"
    sha256 "623856921e3dffd4f253f4b61c0fea2c7d14d75b976fabbc81a0b4c3ecb34d7b"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.14.0.tar.gz"
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
