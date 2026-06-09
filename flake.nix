{
  description = "Go API client for Akeyless test/staging environment";

  inputs = {
    nixpkgs.follows = "substrate/nixpkgs";
    substrate = {
      url = "github:pleme-io/substrate";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs: (import "${inputs.substrate}/lib/repo-flake.nix" {
    inherit (inputs) nixpkgs flake-utils;
  }) {
    self = inputs.self;
    language = "go";
    builder = "library";
    pname = "akeyless-go-test";
    vendorHash = "sha256-kcw2Wy9wn4Nvgg56zRhLXY2XVZiV7FuyvQS/hQI2nIs=";
    description = "Go API client for Akeyless test/staging environment";
    homepage = "https://github.com/pleme-io/akeyless-go-test";
  };
}
