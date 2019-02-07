# Prerequisites for Macs

You must have the following set up on your mac laptop:

- administrator rights on your laptop
- text editor
- [Xcode](https://developer.apple.com/xcode/) command line interface tools [external link]
- [Ruby](https://www.ruby-lang.org/en/) [external link]
- [Bundler](https://bundler.io/) [external link]
- [Middleman](https://middlemanapp.com/) static site generator [external link]

You must also have a [GitHub account](https://github.com/) [external link] with access to alphagov at `https://github.com/alphagov/paas-tech-docs`.

## Administrator rights on your laptop

If your in GDS, [sd-community@digital.cabinet-office.gov.uk](mailto:sd-community@digital.cabinet-office.gov.uk) to request administrator rights on your laptop.

## Install text editor

You should install a text editor to edit your content.

## Install Xcode command line interface tools

These instructions assume that you are the Managed Software Centre on your Mac.

1. Go to the Managed Software Centre on your Mac.
1. Select Updates.
1. Install all required updates.
1. Search for xcode in the search field in Updates.
1. Install Xcode x.x.x or update if necessary.

OR

1. Go to [Apple Developer Downloads](https://developer.apple.com/download/more) [external link].
1. Search for "xcode".
1. Select the appropriate __Command Line Tools (macOS x.x) for Xcode x.x__ and download the file.
1. Install the file.

## Install Ruby

[Ruby](https://www.ruby-lang.org/en/) [external link] is installed globally. This means that you can run the install command from any location on your local machine rather than from within a specific folder.

You can install Ruby in multiple ways, for example using [Ruby Version Manager](https://rvm.io/) (RVM) or [rbenv](https://github.com/rbenv/rbenv) [external links]. These instructions assume you are using RVM.

1. Run the following in the command line interface to install the ruby version manager:

    ```
    `\curl -sSL https://get.rvm.io | bash -s stable --ruby`
    ```

1. Run `rvm install ruby-x.x.x` to install the latest version of [Ruby](https://www.ruby-lang.org/en/). The current x.x.x is `2.6.1`.

## Install Middleman

[Middleman](https://middlemanapp.com/) [external link] is installed globally. This means that you can run the install command from any location on your local machine rather than from within a specific folder.

Run the following in the command line interface to install Middleman:

```
gem install middleman
```
