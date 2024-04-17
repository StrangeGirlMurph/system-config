pushd ~/system-config
nixpkgs-fmt . &>/dev/null
git diff -U0 *.nix
echo "Rebuilding NixOS..."
sudo nixos-rebuild switch >nixos-switch.log 2>&1
cat nixos-switch.log | grep --color error
if test $status -eq 1
    set gen (readlink /nix/var/nix/profiles/system | grep -o "[0-9]*")
    git add .
    git commit -am "$gen"
    git push &>/dev/null
end
popd
