cask "tet-vehicle-display" do
    version "0.22.0"
    sha256 "03390cbe49f5008cb91b19c444a54913af386924e5d43a916a6238f0713e7f48"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.22.0.tar.gz"
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
