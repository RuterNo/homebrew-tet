cask "tet-vehicle-display" do
    version "0.14.2"
    sha256 "f44a10e71a4ba966f561fb11629983a7031995b9a74597eedc6273eba6976003"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.14.2.tar.gz"
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
