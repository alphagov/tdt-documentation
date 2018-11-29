# Build a multipage site

You can create a technical documentation site that splits its content across multiple pages.

This is suitable for documentation sites that have too much content for the single page format.

You should use the search feature [link] with multipage documentation sites.

## Basic multipage

You can split the content into multiple individual pages. An example is the [GOV.UK PaaS technical documentation](https://docs.cloud.service.gov.uk/).

### Repo folder structure

A typical single page documentation repo has this folder structure:

[IMAGE]

A basic multipage documentation repo can have this structure:

[IMAGE]

You must amend the documentation repo folder structure to reflect this structure.

### Amend the tech-docs.yml file

Add this to the end of your project’s `.../config/tech-docs.yml` file, or set it to true if it is already there:

```
# Enable multipage navigation in the sidebar
multipage_nav: true
```

### Create multiple .html.md.erb files

Basic multipage requires multiple `.html.md.erb` files in the tech docs repo __source__ folder.

Each `.html.md.erb` file relates to one separate page within the tech docs, and references the markdown files in the associated folder. 

Additionally, the tech doc repo must have at least one `.html.md.erb` file in the __source__ folder named `index.html.md.erb`.

### Amend the multiple .html.md.erb files

1. Add a weight argument and value to the title of each .html.md.erb file. This builds the structure of the multipage documentation.

  For example:

  ```
  ---
  title: "Product Technical Documentation"
  ---
  ```

  becomes

  ```
  ---
  title: "Product Technical Documentation"
  weight: 10
  ---
  ```

  Higher weights mean that the content is lower down in the documentation hierarchy. An easy way to remember this is to think “heavier pages sink to the bottom”.
  
  For example, a single `.html.md.erb` file becomes multiple `.html.md.erb` files:
  
  |Single page|Multipage|
  |:---|:---|
  |---<br>weight: 10<br>title: "Product Technical Documentation"<br>---<br><br><%= partial 'documentation/index' %>|---<br>weight: 10<br>title: "Product Technical Documentation"<br>---<br><br><%= partial 'documentation/index' %>|
  ||---<br>weight: 10<br>title: "Product Technical Documentation"<br>---<br><br><%= partial 'documentation/index' %>|
  ||---<br>weight: 20<br>title: "Product Technical Documentation"<br>---<br><br><%= partial 'documentation/start' %>|
  ||---<br>weight: 30<br>title: "Product Technical Documentation"<br>---<br><br><%= partial 'documentation/users' %>|
  

1. Add H1 heading if required

There must be an H1 heading in either the `.html.md.erb` file or at the start of the first markdown file for each individual content page.

If there is an H1 heading in both, you will see two H1s when the documentation site builds and renders in your internet browser.



