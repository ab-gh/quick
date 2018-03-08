# quick
Quick is a command line tool to get set up and going with basic GitHub projects super quick.

It aims to cut out the complication between local files, stage, commits, remote projects, upstream branches, clashes, and all the mess, by simplifying it to basic workspaces.

## workspaces

Quick creates a QuickSpace where ever you tell it to, and that is the directory that Quick uses for projects

`$ quick init /Users/username/QuickSpace`

## projects

Projects live inside the QuickSpace directory

### making a project

`$ quick [project-name] [language-name]`

This will create and initialise a project in the specified language

Languages can be their full name (e.g. python), their versioned name (e.g. python3), or (and this will catch all), their file name (e.g. .py)

This will create and initialise a git repository with the directory name as `project-name`, a README.md, and a file in the specified language with the name `project-name` **unless otherwise specified**

No specified language will create a .md file, or as specified in config

### listing projects

`$ quick -list`
`$ quick -l`

This command will list the *projects* inside the QuickSpace

`projects loaded in the quick space

1. quickspaceproject1
2. quickspaceproject2
3. quickspaceproject3`

### viewing a project

`$ quick -view [project-name]`
`$ quick -v [project-name]`

This will cd your terminal into the project, and print a list of the files in your project

`files loaded in the [project-name] project

1. README.md
2. LICENSE.md
3. main.py

~/QuickSpace/project-name $`
