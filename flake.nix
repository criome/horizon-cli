{
  description = "horizon-cli";

  inputs = {
    make-atom.url = "github:criome/make-atom/testing";
    make-atom.inputs.nixpkgs.follows = "nixpkgs";

    system.url = "github:criome/system";

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    rust-atom.url = "github:criome/rust-atom/testing";
    rust-atom.inputs.make-atom.follows = "make-atom";
    rust-atom.inputs.nixpkgs.follows = "nixpkgs";

    horizon-rs.url = "github:criome/horizon-rs/testing";
    horizon-rs.flake = false;
  };

  outputs = inputs: inputs.make-atom.mkAtomFlake ./. inputs;
}
