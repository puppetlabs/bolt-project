# Skeleton Bolt project directory

Bolt is a Ruby command-line tool for executing commands, scripts, and tasks on remote systems using SSH and WinRM.

* Executes commands on remote *nix and Windows systems*.
* Distributes and execute scripts, such as Bash, PowerShell, Python.
* Scales to more than 1000 concurrent connections.
* Supports industry standard protocols (SSH/SCP, WinRM/PSRP) and authentication methods (password, publickey).

> Installing bolt from a gem is not recommended since core modules will not be available. Please [install bolt](https://puppet.com/docs/bolt/latest/bolt_installing.md) as a package

This repository is an example skeleton Bolt Project Directory or `Boltdir`. A `Boltdir` contains all of the configuration, code, and data loaded by Bolt. Read more about the project directory structure at the following [link.](https://puppet.com/docs/bolt/latest/bolt_project_directories.html#project-directories)

## Directory structure
```
├── bolt.yaml
├── data
│   └── common.yaml
├── hiera.yaml
├── inventory.yaml
├── modules
├── Puppetfile
├── README.md
└── site-modules
    └── project
        ├── manifests
        │   └── init.pp
        ├── plans
        │   └── init.pp
        └── tasks
            ├── init.json
            └── init.sh
```
### bolt.yaml
The `bolt.yaml` file sets global configuration options in the context of the bolt project. [bolt.yaml reference](https://puppet.com/docs/bolt/latest/bolt_configuration_options.html)

### data
The `data` directory is the default location to add `hiera` data for the project. [Hiera reference](https://puppet.com/docs/bolt/latest/applying_manifest_blocks.html#concept-4446)

### hiera.yaml
The default location for hiera configuration. [Hiera configuration reference](https://puppet.com/docs/puppet/latest/hiera_config_yaml_5.html)

### inventory.yaml
The `inventory.yaml` file contains information about targets. You can group targets and define connection configuration. [inventory.yaml reference](https://puppet.com/docs/bolt/latest/inventory_file.html)

### Puppetfile
The `Puppetfile` is used to install modules from the [Puppet Forge](https://forge.puppet.com/) or from a Git repository. Modules specified in the Puppetfile will be downloaded and installed into the `modules` directory. [Puppetfile reference](https://puppet.com/docs/bolt/latest/installing_tasks_from_the_forge.html#task-8928)

### site-modules
The `site-modules` directory contains the project specific `Bolt` modules. In this example there is a single module called `project`.

### site-modules/project/manifests
The module `manifest` directory is used for puppet manifest code that may be applied with Bolt.

### site-modules/project/plans
The `plans` directory contains plans. [Plans reference](https://puppet.com/docs/bolt/latest/writing_tasks_and_plans.html#plans)

### site-modules/project/tasks
The `tasks` directory contains tasks. [Tasks reference](https://puppet.com/docs/bolt/latest/writing_tasks_and_plans.html#tasks)

## Getting Help

* [#bolt on Slack](https://slack.puppet.com/) - Join the Bolt developers and community