# Create a new project

1. Open the command line interface.

1. Navigate to your documents folder.

1. Run the following in the command line:

    ```
    middleman init PROJECT_NAME -T alphagov/tech-docs-template
    ```
    where `PROJECT_NAME` is the name of your project.

1. Answer __Yes__ or __No__ to the installation questions.

1. Project creation is complete when you see `Bundle complete!`.

## Update your version of the tech doc template

1. Open the command line interface.

1. Navigate to the new project folder.

1. Run the following in the command line to update all the gems inside the repo:

    ```
    bundle install
    ```

## View your new project

Navigate to the created documentation repo folder.

The folder will have multiple pre-populated files. You will only need to amend the content folder and the `config/tech-docs.yml` file. By default, the content folder is `source/documentation`.
