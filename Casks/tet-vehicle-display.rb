cask "tet-vehicle-display" do
    version "0.17.5"
    sha256 "4caf1aa3d4d5cc612dce458f90005641bef5868956e20d63a2369843d1f5d8bd"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.17.5.tar.gz"
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
