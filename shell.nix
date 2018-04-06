with import <nixpkgs> {};

mkShell {
  buildInputs = with ocamlPackages_4_02; [ ocaml ninja yarn merlin ];

  shellHook = ''
    export PATH="`pwd`/node_modules/.bin:$PATH"
  '';
}
