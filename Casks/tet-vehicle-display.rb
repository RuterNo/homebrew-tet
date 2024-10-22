cask "tet-vehicle-display" do
    version "0.9.0"
    sha256 "3251bdd43db280ea7af7879c698be59fb35e0ec4bbe2394447db08c98dcadece"
    url "https://vehicle-display.tet.digital/assets/tet-vehicle-display_macos_v0.9.0.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://vehicle-display.tet.digital/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'tet-vehicle-display_macos_v0.9.0/vdloader'
    binary 'tet-vehicle-display_macos_v0.9.0/findmyvehicle'
end
