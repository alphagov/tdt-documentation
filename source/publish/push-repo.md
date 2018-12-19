# Push documentation to GitHub

These instructions assume that you have documentation changes ready to push to GitHub.

To push your documentation changes to GitHub for the first time, you must:

- create local and remote GitHub repos
- commit all changes in the local repo
- link the local repo to the remote repo
- push the staged commit to the remote repo

## Create local and remote GitHub repos

1. [Create a remote empty repo](https://help.github.com/articles/create-a-repo/) [external link] in your organisation on GitHub.

1. [Create a new local documentation repo](/create_new_project.html#create-a-new-project) if required.

## Commit all changes in the local repo 

1. Go to the local repo directory in the command line.

1. Make the created local repo into a Git repo:

    ```
    git init
    ```

1. If applicable, add all files in the local repo and stage them for commit:

    ```
    git add
    ```

1. Commit the staged files:

    ```
    git commit -m "COMMIT-MESSAGE"`
    ```
    
    where `COMMIT-MESSAGE` is the message describing the commit.

## Link the local repo to the remote repo

1. Go to the remote repo in GitHub.

1. Select the __Clone or download__ button.

1. Select either __Use HTTPS__ or __Use SSH__. 

1. Select the copy button.

1. In the command line, link the local repo to the remote repo: 

    ```
    git remote add origin REMOTE-REPO-URL
    ```

1. Verify the remote repo:

    ```
    git remote -v
    ```

## Push the staged commit to the remote repo

Push the changes in your local repo to the remote repo: 

```
git push -u origin master
```

You have now created a remote documentation repo on GitHub.

For more information, refer to [Adding an existing project to GitHub](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/) [external link].
