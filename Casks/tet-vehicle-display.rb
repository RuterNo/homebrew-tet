cask "tet-vehicle-display" do
    version "0.32.0"
    sha256 "d5d096a3f212697dd254efaca173a2df80a9ee2fb23af2f668d9933af16698cf"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.32.0.tar.gz"
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
