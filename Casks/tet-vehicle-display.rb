cask "tet-vehicle-display" do
    version "0.30.0"
    sha256 "a4a5cc871c6dfdbf5ac8dffd4cf15f8092ada2942e8ae321d4c50c907eeb46f3"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.30.0.tar.gz"
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
