{
  build = get.mkAtom {
    inherit registry system;
    args = mod.rustAtomArgs;
  };

  devenv = get.mkAtom {
    inherit registry system;
    args = {
      atomSrc = registry.devenv-atom;
      inputs.config = mod.rustAtomArgs;
    };
  };
}
