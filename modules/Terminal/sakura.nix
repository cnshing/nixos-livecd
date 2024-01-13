{ pkgs, ... }: 
{
  environment.systemPackages = with pkgs; [ sakura ];
}
