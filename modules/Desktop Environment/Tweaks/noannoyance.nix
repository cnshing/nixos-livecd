{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [ gnomeExtensions.noannoyance-fork ];
}