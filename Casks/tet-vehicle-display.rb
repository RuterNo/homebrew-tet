cask "tet-vehicle-display" do
    version "0.10.2"
    sha256 "04c0b19bfe5f80d5f6a41f1be7589353efcad568f989273a06b237346cd82da5"
    url "https://vehicle-display.tet.digital/assets/tet-vehicle-display_macos_v0.10.2.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://vehicle-display.tet.digital/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'tet-vehicle-display_macos_v0.10.2/vdloader'
    binary 'tet-vehicle-display_macos_v0.10.2/findmyvehicle'
end
