cask "tet-vehicle-display" do
    version "0.28.1"
    sha256 "bc128c20ca4546db7cb862c51ef2710616dc4b7f7d6c117551251ae8b5a41b65"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.28.1.tar.gz"
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
