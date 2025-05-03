{
  Executable = mod.package + "/bin/horizon-cli";
  Package = mod.atoms.build.crates.horizon-cli;
  DevShell = mod.atoms.devenv.devShell;
}
