{
  description = "Example JavaScript development environment for Zero to Nix";

  # Flake inputs
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  # Flake outputs
  outputs =
    { nixpkgs, self }:
    let
      # Systems supported
      allSystems = [
        "x86_64-linux" # 64-bit Intel/AMD Linux
        "aarch64-linux" # 64-bit ARM Linux
        "x86_64-darwin" # 64-bit Intel macOS
        "aarch64-darwin" # 64-bit ARM macOS
      ];

      # Helper to provide system-specific attributes
      forAllSystems =
        f:
        nixpkgs.lib.genAttrs allSystems (
          system:
          f {
            pkgs = import nixpkgs {
              inherit system;
              config.allowUnfree = true;
            };
          }
        );
    in
    {
      # Development environment output
      devShells = forAllSystems (
        { pkgs }:
        {
          default = pkgs.mkShell {
            # The Nix packages provided in the environment
            packages = with pkgs; [
              ruby
              rubyPackages.rake
            ];
          };
        }
      );
    };
}
