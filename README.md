# nixos

## Redimensionnement virtualbox

```sh
VBoxClient --vmsvga
```

## backup

```sh
mv /etc/nixos{,.bak}
```

## git clone

```sh
git clone https://github.com/wakan/nixosconf.git nixos
```

### git change https clone to ssh for commit if necessary

```sh
git remote set-url origin git@github.com:wakan/nixosconf.git
```

## cp hardware configuration



## lien vers la bonne machine

```sh
ln -s machine/virtualbox/conf.nix configuration.nix
```
a
## add channel and recup conf set password

```sh
nix-channel --update
nixos-rebuild switch --upgrade
passwd guest
chown -R dev /etc/nixos
reboot
```
