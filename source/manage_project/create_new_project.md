# Create a new project

1. Open the command line interface.

1. Navigate to your documents folder.

1. Run the following in the command line:

    ```
    Middleman init PROJECT_NAME -T alphagov/tech-docs-template
    ```
    where PROJECT_NAME is the name of your project.
    
1. Answer Yes or No to the installation questions.

1. Project creation is complete when you see `Bundle complete!`.
    
## Update your version of the tech doc template

Open the command line interface.

Navigate to the new project folder.

Run the following in the command line to update all the gems inside the repo:

```
bundle install
```

## View your new project

1. Go to Finder (Mac) or Explorer (Windows) or equivalent.

1. Check for the folder with your project name.

The folder will have multiple pre-populated files. You will only need to amend the `source/documentation` folder and the `config.yml` file.

