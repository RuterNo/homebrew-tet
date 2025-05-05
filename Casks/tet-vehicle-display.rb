cask "tet-vehicle-display" do
    version "0.23.0"
    sha256 "5fce15d1219906e00102c388d5cc6ad1b22e895d7ccfadc0af133e03ddd20d5f"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.23.0.tar.gz"
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
