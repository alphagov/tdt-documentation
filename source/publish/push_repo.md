# Publish your documentation

To publish your documentation, you must:

- push your documentation to the remote GitHub repo
- deploy your site

## Push documentation to GitHub

These instructions assume that you have documentation changes ready to push to GitHub.

To push your documentation changes to GitHub for the first time, you must:

- create local and remote GitHub repos
- commit all changes in the local repo
- link the local repo to the remote repo
- push the staged commit to the remote repo

### Create local and remote GitHub repos

1. [Create a remote empty repo](https://help.github.com/articles/create-a-repo/) [external link] in your organisation on GitHub.

1. [Create a new local documentation repo](/create_new_project.html#create-a-new-project) if required.

### Commit all changes in the local repo

1. Go to the local repo directory in the command line.

1. Make the created local repo into a Git repo:

    ```
    git init
    ```

1. If applicable, add all files in the local repo and stage them for commit:

    ```
    git add .
    ```

1. Commit the staged files:

    ```
    git commit -m "COMMIT-MESSAGE"`
    ```

    where `COMMIT-MESSAGE` is the message describing the commit.

### Link the local repo to the remote repo

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

### Push the staged commit to the remote repo

Push the changes in your local repo to the remote repo:

```
git push -u origin master
```

You have now created a remote documentation repo on GitHub.

For more information, refer to [Adding an existing project to GitHub](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/) [external link].

## Deploy your site

The GDS technical documentation tool is built on Middleman, which is a static
site generator. You can therefore deploy your site anywhere that supports
static sites.

### Use the GOV.UK PaaS

We recommend that government services use the [GOV.UK
PaaS](https://www.cloud.service.gov.uk/) to deploy documentation sites built
with the GDS technical documentation tool. This is also free of charge for
government services.

### GitHub Pages

With some modification, you can also deploy your site with [GitHub
Pages](https://pages.github.com/) [external link], but we do not support this. To do this, you
could for example use the [`middleman-gh-pages`]
tool](https://github.com/edgecase/middleman-gh-pages) [external link], which we do not
support. We also cannot guarantee that all features of the tool will work if
you deploy your site with GitHub Pages.

### Example: Deploy your documentation to a temporary site on the GOV.UK PaaS

You can deploy your documentation on a temporary site on the GOV.UK PaaS.

This is useful for review of content by non-technical people, for example delivery managers or product owners.

#### Before you start

You must have a GOV.UK PaaS account. This account is called an organisation, or org. Sign up for an org account at [https://www.cloud.service.gov.uk/signup](https://www.cloud.service.gov.uk/signup).

Once you have an org account, you will need a personal account with access to the `gds-tech-writers` org. Ask one of the other tech writers to authorise the creation of your personal account with access to this org.

For more information, refer to the [GOV.UK PaaS documentation on accounts](https://docs.cloud.service.gov.uk/get_started.html#get-an-account).

#### Install the Autopilot plugin

You only need to install the Autopilot plugin once.

1. Go to [https://github.com/contraband/autopilot/releases] [external link] and download the latest `autopilot-darwin` file.

1. Open the command line and navigate to the folder containing the downloaded autopilot file.

1. Run the following in the command line to make the downloaded file executable:

    ```
    chmod +x autopilot-darwin
    ```

1. Run the following to install the plugin:

    ```
    cf install-plugin autopilot-darwin
    ```

#### Deploy the temporary site

1. Run the following to sign in to the GOV.UK PaaS

    ```
    cf login -a api.london.cloud.service.gov.uk -u <YOUR-USERNAME>@digital.cabinet-office.gov.uk
    ```

1. Run the following to target the `gds-tech-writers` org and `sandbox` space:

    ```
    cf target -o gds -tech-writers -s sandbox
    ```

1. Run `cf apps` to check what apps are running in the targeted space.

1. Navigate to your tech doc repo and, if necessary, create a `manifest.yml` in the root directory containing the following code:

    ```
    applications:
    - name: NAME
      memory: 64M
      path: ./build
      buildpack: staticfile_buildpack
      instances: 2
    ```
    where `NAME` is the name of your content.

1. Run `bundle exec middleman build` in the command line.

1. Run the following to push the app:

    ```
    cf zero-downtime-push NEW-APP-NAME-TO-BE-DEPLOYED -f MANIFEST_PATH_AND_NAME -p YOUR_FILE_PATH
    ```

    If you're already in the directory with the manifest, you don't need the `-p` flag or the `YOUR_FILE_PATH` information.

    You can use `cf push` if you're not using the autopilot plugin.

1. Run `cf apps` to check your new app appears. You can check your deployment at:

    ```
    NEW-APP-NAME-TO-BE-DEPLOYED.cloudapps.digital
    ```

For more information on deploying apps, refer to the [GOV.UK PaaS documentation on deploying apps](https://docs.cloud.service.gov.uk/deploying_apps.html#deploying-apps).

## Continuous integration

The GOV.UK PaaS documentation explains how to set up continuous integration (CI) with [Travis and Jenkins](https://docs.cloud.service.gov.uk/using_ci.html#using-the-travis-ci-tool). We recommend this method for documentation sites built using the GDS technical documentation tool.
