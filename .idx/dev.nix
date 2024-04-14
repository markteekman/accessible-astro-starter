{ pkgs, ... }: {
  idx.extensions = [
    "astro-build.astro-vscode"
  ]
  idx.previews = {
    enable = true;
    previews = [
      {
        command = [
          "npm"
          "run"
          "dev"
          "--"
          "--port"
          "$PORT"
          "--host"
          "0.0.0.0"
          "--disable-host-check"
        ];
        id = "web";
        manager = "web";
      }
    ];
  };
}
