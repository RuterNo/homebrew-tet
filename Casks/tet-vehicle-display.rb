cask "tet-vehicle-display" do
    version "0.23.0"
    sha256 "98a79355ef7380bcc5e4bf227238912d234d7b437a0b30dcd26f27e1e0f7c85d"
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
