{
  Package =
    (get.mkAtom {
      inherit registry system;
      args = {
        atomSrc = registry.rust-atom;
        inputs.src.src = get.horizon-rs;
      };
    }).crates.horizon-cli;

  Devshell = { };
}
