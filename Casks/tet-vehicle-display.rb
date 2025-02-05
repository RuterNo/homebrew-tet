cask "tet-vehicle-display" do
    version "0.14.3"
    sha256 "4b7d45a6ebfbc7faa7d6184e7625aa113a1cdf08741918e6c1582fb251cf4d1b"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.14.3.tar.gz"
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
