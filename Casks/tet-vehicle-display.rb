cask "tet-vehicle-display" do
    version "0.10.1"
    sha256 "cf0b84a836f83fccd621dc1b4635eee1ae09003aab3fe7bd2072a62ee74b90f7"
    url "https://vehicle-display.tet.digital/assets/tet-vehicle-display_macos_v0.10.1.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://vehicle-display.tet.digital/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'tet-vehicle-display_macos_v0.10.1/vdloader'
    binary 'tet-vehicle-display_macos_v0.10.1/findmyvehicle'
end
