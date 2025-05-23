cask "tet-vehicle-display" do
    version "0.24.0"
    sha256 "645f715297d35b235b10151056f9b213665a270005ecb1a2cd979ecc347cb9bb"
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
