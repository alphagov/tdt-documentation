# Update docs to use latest tech-docs-gem

## Clone the remote documentation repo

1. Open your internet browser and go to your remote documentation repo on GitHub.

1. Select the __Clone or download__ button.

1. Select either __Use HTTPS__ or __Use SSH__.

1. Select the copy button.

1. In the command line, clone the remote repo to a local directory:

    ```
    git clone [repo address]
    ```

## Create a new branch

1. Go into the cloned local repo folder using the command line.

1. Check that you are on the master branch:

    ```
    git status
    ```

    You should get the message:

    ```
    On branch master
    Your branch is up to date with 'origin/master'.
    nothing to commit, working tree clean
    ```
1. Create a new branch and switch to that branch:

    ```
    git checkout -b [BRANCH_NAME]
    ```

## Update the ruby gems in the documentation repo

1. Update all ruby gems:

    ```
    bundle update
    ```

    This updates all the ruby gems that your documentation repo uses, including the `tech-docs-gem`.

    You should get the message `Bundle updated!` once the update is finished.

1. Add all changes to the next commit:

    ```
    git add .
    ```

1. Commit the changes:

    ```
    git commit -m "[commit message]"
    ```
    where `COMMIT_MESSAGE` is the description of the commit.

1. Push the new branch to the remote documentation repo on GitHub:

    ```
    git push -u origin [BRANCH NAME]
    ```
1. Review, approve and merge the changes in line with your service team processes.
