cask "tet-vehicle-display" do
    version "0.24.0"
    sha256 "1ca42b75aee123180a7654918b72a00553205fc478d565c2b62453793e505ed0"
    url "https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v0.24.0.tar.gz"
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
