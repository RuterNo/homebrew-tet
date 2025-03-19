cask "tet-vehicle-display" do
    version "0.17.6"
    sha256 "61e8c3ce12cb8f46114e073e724d088b1808d602a1546c90fcc41db0f22c882b"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.17.6.tar.gz"
    name "TET Vehicle Display"
    desc "Travel information on board the vehicle"
    homepage "https://vehicle-display.tet.digital"

    livecheck do
        url "https://pto-api.transhub.io/vdtools/VERSION.txt"
        regex(/(\d+(?:\.\d+)+)/i)
    end

    binary 'target/mac-universal/release/vdloader'
    binary 'target/mac-universal/release/findmyvehicle'
end
