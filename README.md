# EcoSystemSummary
When working on complex sites, it is common to have several different repositories on your local machine, in a testing environment or preview location. When working with multiple, especially in testing when you might be seeing if a UI repo works with a different API repo, it is easy to lose track of what branch is pulled where. This provides a simple table which presents that data.

## Configuration

In the Coldbox.cfc add the following configuration for each repo of interest. Upon opening, the view will read this configuration, obtain the checked out branch for each folder in the sites key, and present it as a table for display.

"ecoSystemSummary": {
    "sites" : [
        "label":"My Site",
        "folder": "/path/to/the/site/folder/",  <--- Must end with a slash
        "url": "The URL to open the site"
    ]
}

## Change Log
0.0.2 - Make the module public and fleshed out the README.md
0.0.1 - Readme and formatting
0.0.0 - Initial upload