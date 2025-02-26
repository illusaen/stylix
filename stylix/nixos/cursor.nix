{ config, lib, ... }:

let
  cfg = config.stylix.cursor;
in
{
  imports = [ ../cursor.nix ];
  config = lib.mkIf (config.stylix.enable && cfg.enable) {
    environment.variables.XCURSOR_SIZE = toString cfg.size;
  };
}
