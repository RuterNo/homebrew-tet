cask "tet-vehicle-display" do
    version "0.15.0"
    sha256 "2090caffc776620d9d3b48bd3e7195ef2212d83b437b882634e85ebbb9e35eeb"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.15.0.tar.gz"
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
