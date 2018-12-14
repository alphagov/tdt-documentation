# Build a single page site

You can create a technical documentation site that contains all of its content in a single page.

This is suitable for documentation sites that have do not have a lot of content, and do not need to have topics split into individual pages.

## Organise content files 

1. [Create](create_new_project.html#create-a-new-project) the content files for your documentation site.

1. Amend [link] your content files to ready them for your documentation site.

1. Save your content files inside your documentation repo in your desired hierarchy.

## Build your documentation site's structure

1. Go to the __source__ folder in your documentation repo.

1. Select the `index.html.md.erb` file.

1. Amend the `index.html.md.erb` file. 

    You can either [add a `<%= partial` line](single_page.html#add-partial-lines) that references each content file that makes up your overall documentation site, or add the content into the `index.html.md.erb` file directly.

### Add partial lines 

In this example, you have three content files:
  
- an introduction named `index.md` in the `documentation` folder
- a "Who is this documentation for?" section named `who-docs.md` in the `documentation/introduction` folder
- a "Set up the API client" section named `set_up_client` in the `documentation/introduction` folder

The `index.html.md.erb` file would look like this:

```bash
---
title: "GOV.UK Technical Documentation"
---

<%= partial 'documentation/index' %>
<%= partial 'documentation/introduction/who_docs' %>
<%= partial 'documentation/introduction/set_up_client' %>
```

This `index.html.md.erb` will build a documentation site with the following structure:

- Introducution
- Who is this documentation for?
- Set up the client
