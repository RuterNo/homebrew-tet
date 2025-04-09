cask "tet-vehicle-display" do
    version "0.20.0"
    sha256 "bdbbab9af9a15712090054c47207895bf0626c4620c6a5156251f571d57f9835"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.20.0.tar.gz"
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
