{
  inputs.dream2nix.url = "github:nix-community/dream2nix";
  inputs.mine = {
    flake = false;
  };
  outputs = inputs:
    inputs.dream2nix.lib.makeFlakeOutputs {
      systems = ["x86_64-linux" "aarch64-linux"];
      config.projectRoot = inputs.mine;
      source = inputs.mine;
    };
}
