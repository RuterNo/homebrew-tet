cask "tet-vehicle-display" do
    version "0.9.4"
    sha256 "8fd7fdd30fcc7ea7e7cf1c5be2363a23c4c8a6f4e8cf7cb668e2f6c786aa1e94"
    url "https://vehicle-display.tet.digital/assets/tet-vehicle-display_macos_v0.9.4.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://vehicle-display.tet.digital/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'tet-vehicle-display_macos_v0.9.4/vdloader'
    binary 'tet-vehicle-display_macos_v0.9.4/findmyvehicle'
end
