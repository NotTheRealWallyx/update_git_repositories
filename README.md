# Update git repositories

This repository helps you having all the repositories updated with git. It search all the folder that have `.git` folder and updates the repository. The folder that are being checked are the ones on the user folder. Repositories outside the user one will not be updated.

## How to install

Follow this two steps to install the command:

Clone the repository
``` bash
git clone https://github.com/sWallyx/update_git_repositories.git
```

Run the install script*
``` bash
./install.sh
```

Done! You will have the command available** on the terminal.

_* On some cases you may need to make it executable first `chmod +x install.sh`_

_** You might need to restart the terminal_

## Usage

After making the installation write on the terminal `git-update` and you will see how all the repositories update.

Have fun coding.

## TODO's

* [ ] Restart after update, see issue [#4](https://github.com/sWallyx/update_git_repositories/issues/4)
* [ ] Investigate if cd can just be removed [#5](https://github.com/sWallyx/update_git_repositories/issues/5)
* [x] Move functions out of `update.sh` [#6](https://github.com/sWallyx/update_git_repositories/issues/6)
* [ ] `error: unknown option "show-current"` message while running [#7](https://github.com/sWallyx/update_git_repositories/issues/8)
* [ ] Remove repository if check [#10](https://github.com/sWallyx/update_git_repositories/issues/10)

## Licence

[MIT](LICENSE) - License
