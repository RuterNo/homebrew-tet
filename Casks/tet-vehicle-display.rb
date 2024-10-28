cask "tet-vehicle-display" do
    version "0.9.5"
    sha256 "a00bb4f55e680d6681982b0fe2d64aab1e9569e47e21605f168b9af09b771742"
    url "https://vehicle-display.tet.digital/assets/tet-vehicle-display_macos_v0.9.5.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://vehicle-display.tet.digital/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'tet-vehicle-display_macos_v0.9.5/vdloader'
    binary 'tet-vehicle-display_macos_v0.9.5/findmyvehicle'
end
