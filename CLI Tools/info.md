# Misc Info CLI Commands

### Count the lines of code in a git repo
>_Can exclude folders or file types in the pipes_

```sh
git ls-files | grep -Ev \
'node_mudules|.vs|.jpg|.png|.lock|.jar|.bat|.pdf|.otf|.woff' \
| xargs wc -l
```
