cask "tet-vehicle-display" do
    version "0.18.3"
    sha256 "9e594e478df395c92020d40a939ec68408afca4dea40aebe9ab39ad57c38b83d"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.18.3.tar.gz"
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
