{ pkgs, ... }:
pkgs.mkShell {
  packages = [
    pkgs.nodejs_22
    pkgs.nodePackages_latest.pnpm
  ];

  env = { };

  shellHook = ''
    # optional: enable corepack so `yarn`/`pnpm` shims work via Node
    if command -v corepack >/dev/null 2>&1; then
      corepack enable >/dev/null 2>&1 || true
    fi
    echo "Node: $(node -v)"
    echo "npm:  $(npm -v)"
    echo "pnpm: $(pnpm -v)"
  '';
}
