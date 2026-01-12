{
  pkgs,
  ...
}:
pkgs.stdenv.mkDerivation rec {
  pname = "ftl";
  # 仅代表此nix包版本
  version = "1.0.0";
  src = pkgs.fetchFromGitHub {
    owner = "beark";
    repo = "ftl";
    rev = "master";
    hash = "sha256-fsRFDF32VpLnWyD9fNY6OSYPYejBbRst6CpUwOg1ljo=";
  };
  dontBuild = true;
  dontConfigure = true;
  installPhase = ''
    runHook preInstall
    mkdir -p $out/include
    cp -r include/ftl $out/include/
    runHook PostInstall
  '';
  meta = with pkgs.lib; {
    description = "Functional Template Library for C++";
    homepage = "https://github.com/beark/ftl";
    platforms = platforms.all;
  };
}
