{ pkgs ? import <nixpkgs> {}
}:
pkgs.mkShell {
  name = "Covid_tracking_System-environment";
  buildInputs = [
    pkgs.glibcLocales
    pkgs.nodejs-14_x
    pkgs.postgresql_13
    pkgs.pgcli
  ];
  shellHook = ''
    export PGHOST=/tmp
    export PGDATA=./db/content
    export PGDATABASE=Covid_tracking_System
    export PGPORT=5454
    export PGSSLMODE=disable
  '';
}
