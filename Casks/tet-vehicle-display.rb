cask "tet-vehicle-display" do
    version "0.15.2"
    sha256 "7dc9e9ee9990456ec99ccec9e348d26a800cba6b6dec18a15c26f35d7c468a2b"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.15.2.tar.gz"
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
