cask "tet-vehicle-display" do
    version "0.8.1"
    sha256 "7434908539eaf638ddf541e205eb9216a3bf977a7c5b9be5f7756ddb74572a44"
    url "https://vehicle-display.tet.digital/assets/tet-vehicle-display_macos_v0.8.1.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://vehicle-display.tet.digital/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'tet-vehicle-display_macos_v0.8.1/vdloader'
    binary 'tet-vehicle-display_macos_v0.8.1/findmyvehicle'
end
