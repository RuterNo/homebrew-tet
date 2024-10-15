cask "tet-vehicle-display" do
    version "0.8.3"
    sha256 "171f2297c6fd54f9e1193a8f7d481bf59784b6721603c34147477e9a510df7c8"
    url "https://vehicle-display.tet.digital/assets/tet-vehicle-display_macos_v0.8.3.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://vehicle-display.tet.digital/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'tet-vehicle-display_macos_v0.8.3/vdloader'
    binary 'tet-vehicle-display_macos_v0.8.3/findmyvehicle'
end
