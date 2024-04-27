{ pkgs, ... }: {
  idx.extensions = [
    "astro-build.astro-vscode"
    "eliostruyf.vscode-front-matter"
  ];
  idx.workspace.onCreate = {
    npm-install = "npm install";
  };
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
