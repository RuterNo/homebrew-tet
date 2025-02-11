cask "tet-vehicle-display" do
    version "0.15.7"
    sha256 "b6874eabfdb0d8460d5d512644a9821f23ce5bf46ab9e714c08099a086a5e041"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.15.7.tar.gz"
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
