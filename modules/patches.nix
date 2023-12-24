# Technical hotfixes not belonging to any specific livecd feature/requirement 
{ lib, boot, ... }:
{
    # Fixes missing cairo-lib dependency for docker builds only
    # See https://github.com/NixOS/nixpkgs/issues/119841
    environment.noXlibs = lib.mkIf boot.isContainer (lib.mkForce false);
}