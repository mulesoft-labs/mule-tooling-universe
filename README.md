Mule Tooling Universe
===============================
This project aggregates all the different projects used by Studio 6 and Studio 7 or any other project managed by the Studio Team.


Cloning the project
====================
To clone this project use the following command:

```bash
git clone --recursive git@github.com:mulesoft-labs/mule-tooling-universe.git
```

This command guarantees that all the submodules include in the project will be also checked out.

Since the master will be pointing to an specific commit and not the master branch you must execute:

```bash
./setBranches.sh
```

**Note:** if you have problems cloning the project is because it requires a SSH key installed for your user to be able to connect to github. If that's the case follow the instructions described [here](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/). And don't forget to [add the key to you github account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account)
