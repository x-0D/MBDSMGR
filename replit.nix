{ pkgs }: {
    deps = [
        pkgs.cowsay

        pkgs.go_1_17
        pkgs.gopls

      	pkgs.nodejs-16_x
        pkgs.nodePackages.typescript-language-server
        pkgs.yarn
        pkgs.replitPackages.jest

        pkgs.python2Full
    ];
    env = {
    PYTHON_LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
      # Needed for pandas / numpy
      pkgs.stdenv.cc.cc.lib
      pkgs.zlib
      # Needed for pygame
      pkgs.glib
      # Needed for matplotlib
      pkgs.xorg.libX11
    ];
    PYTHONBIN = "${pkgs.python2Full}/bin/python2";
    LANG = "en_US.UTF-8";
  };
}