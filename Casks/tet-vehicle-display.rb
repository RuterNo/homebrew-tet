cask "tet-vehicle-display" do
    version "0.27.0"
    sha256 "033305bd712388340f5e4b51e6976913c1bdd791d5dfedc46d0fe2d3402e058b"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.27.0.tar.gz"
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
