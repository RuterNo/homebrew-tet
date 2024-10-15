cask "tet-vehicle-display" do
    version "0.8.2"
    sha256 "82eb999972391bbad312ebb1bee8ebfb9455f7e9609ff844872bbbda68ee0326"
    url "https://vehicle-display.tet.digital/assets/tet-vehicle-display_macos_v0.8.2.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://vehicle-display.tet.digital/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'tet-vehicle-display_macos_v0.8.2/vdloader'
    binary 'tet-vehicle-display_macos_v0.8.2/findmyvehicle'
end
