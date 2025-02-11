cask "tet-vehicle-display" do
    version "0.15.6"
    sha256 "399957534d0488b023b029c5328b416c1bd8030154b99c80b3ab5789f5d16cb1"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.15.6.tar.gz"
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
