pushd ~/system-config
nixpkgs-fmt . &>/dev/null
git diff -U1
echo "Rebuilding NixOS..."
git add .
sudo nixos-rebuild switch >nixos-switch.log 2>&1
cat nixos-switch.log | grep --color error
if test $status -eq 1
    hyprctl reload
    set gen (readlink /nix/var/nix/profiles/system | grep -o "[0-9]*")
    git commit -am "Generation #$gen"
    git push &>/dev/null
else
    git reset &>/dev/null
end
popd
