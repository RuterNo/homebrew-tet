cask "tet-vehicle-display" do
    version "0.9.1"
    sha256 "a40572a7af97217648a588424abec52b0a352532bffba990b9c8d60fb0843ef6"
    url "https://vehicle-display.tet.digital/assets/tet-vehicle-display_macos_v0.9.1.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://vehicle-display.tet.digital/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'tet-vehicle-display_macos_v0.9.1/vdloader'
    binary 'tet-vehicle-display_macos_v0.9.1/findmyvehicle'
end
