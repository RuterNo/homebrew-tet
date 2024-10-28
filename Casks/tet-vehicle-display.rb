cask "tet-vehicle-display" do
    version "0.10.0"
    sha256 "b9fc0648fcc4622d9e8b2948edb861394c02ed8a4ddff650b2e0ed94da43d1d0"
    url "https://vehicle-display.tet.digital/assets/tet-vehicle-display_macos_v0.10.0.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://vehicle-display.tet.digital/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'tet-vehicle-display_macos_v0.10.0/vdloader'
    binary 'tet-vehicle-display_macos_v0.10.0/findmyvehicle'
end
