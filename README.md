# Run this in browser(Normal way) with the latest commit from main branch:
```
https://vivekanandan-ks.github.io/tamil-sfd-2025/
```

Run this in terminal(latest commit):
```bash
nix run github:vivekanandan-ks/tamil-sfd-2025
```
This is the equivalent of the follows without polluting your directories. 
```bash
git clone https://github.com/vivekanandan-ks/tamil-sfd-2025.git
cd tamil-sfd-2025
xdg-open index.html
```
Also like a website, this'll fetch the latest changes from the main branch and do this.
Note: On first run it's a little slow coz it cache. 

# Any benefits? Actually yes

When someone gives a PR and you want to try the exact site locally?
Just run this:
```bash
nix run github:vivekanandan-ks/tamil-sfd-2025/pull/1/head
```
Note: Here 1 is the PR number

This allows you to try the site at any commit, PR in the history with just single command.