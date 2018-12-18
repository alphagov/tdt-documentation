# Push repo to GitHub

[Create a remote empty repo](https://help.github.com/articles/create-a-repo/) [external link] on GitHub.

Create repo using middleman - link to https://tdt-documentation.london.cloudapps.digital/create_new_project.html#create-a-new-project

Go to the created local repo directory in the command line.

Make the created local repo into a Git repository by running `git init`.

If applicable, run `git add .` add all files in the local repo and stages them for commit.

Commit the files that you've staged in your local repo by running `git commit -m "COMMIT-MESSAGE"`.

Copy the remote empty repo's URL by selecting __Clone or download__, selecting either __Use HTTPS__ or __Use SSH__ and selecting the copy button.

In the command line, link the local repo to the remote repo by running `git remote add origin REMOTE-REPO-URL`.

Verify the remote repo by running `git remote -v`.

Push the changes in your created local repo to the remote repo by running `git push -u origin master`.

You have now created a remote documentation repo on GitHub.

For more information, refer to [Adding an existing project to GitHub](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/) [external link].
