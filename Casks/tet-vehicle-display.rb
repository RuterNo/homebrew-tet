cask "tet-vehicle-display" do
    version "0.9.5"
    sha256 "cec23a1d4b007581272931c8dddb1dc9ac20fd051428de1434b8265f131ce29d"
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
