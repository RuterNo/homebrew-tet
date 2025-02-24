cask "tet-vehicle-display" do
    version "{{VERSION}}"
    sha256 "{{SHA256}}"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v{{VERSION}}.tar.gz"
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
