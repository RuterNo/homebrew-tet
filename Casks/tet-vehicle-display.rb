cask "tet-vehicle-display" do
    version "0.9.2"
    sha256 "36f654d364ff2aec7ad6d073896ac36118f5a5e1fed20eab209aad681c7b68ae"
    url "https://vehicle-display.tet.digital/assets/tet-vehicle-display_macos_v0.9.2.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://vehicle-display.tet.digital/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'tet-vehicle-display_macos_v0.9.2/vdloader'
    binary 'tet-vehicle-display_macos_v0.9.2/findmyvehicle'
end
