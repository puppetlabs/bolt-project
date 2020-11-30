# Skeleton Bolt project directory

Bolt is a Ruby command-line tool for executing commands, scripts, and tasks on remote systems using SSH and WinRM.

* Executes commands on remote *nix and Windows systems*.
* Distributes and execute scripts, such as Bash, PowerShell, Python.
* Scales to more than 1000 concurrent connections.
* Supports industry standard protocols (SSH/SCP, WinRM/PSRP) and authentication methods (password, publickey).

> Installing bolt from a gem is not recommended since core modules will not be available. Please [install bolt](https://puppet.com/docs/bolt/latest/bolt_installing.md) as a package

This repository is an example skeleton Bolt project. A Bolt project contains all of the configuration, code, and data loaded by Bolt. Read about [Bolt projects](https://puppet.com/docs/bolt/latest/projects.html) to learn more.

## Directory structure
```
├── .modules
├── bolt-project.yaml
├── data
│   └── common.yaml
├── hiera.yaml
├── inventory.yaml
├── modules
├── Puppetfile
├── README.md
├── manifests
│   └── init.pp
├── plans
│   └── init.pp
└── tasks
    ├── init.json
    └── init.sh
```
### bolt-project.yaml
The `bolt-project.yaml` file sets configuration options in the context of the bolt project. [bolt-project.yaml reference](https://puppet.com/docs/bolt/latest/bolt_project_reference.html)

### data
The `data` directory is the default location to add `hiera` data for the project. [Hiera reference](https://puppet.com/docs/bolt/latest/applying_manifest_blocks.html#concept-4446)

### hiera.yaml
The default location for hiera configuration. [Hiera configuration reference](https://puppet.com/docs/puppet/latest/hiera_config_yaml_5.html)

### inventory.yaml
The `inventory.yaml` file contains information about targets. You can group targets and define connection configuration. [inventory.yaml reference](https://puppet.com/docs/bolt/latest/inventory_file.html)

### Puppetfile
The `Puppetfile` acts as a lock file for modules listed in `bolt-project.yaml`. Bolt generates a
Puppetfile each time you modify your modules with a Bolt command. Do not edit the Puppetfile
directly. Instead, use Bolt commands to manage your modules, and rely on Bolt to manage the
Puppetfile.

### .modules
This is where modules defined in `bolt-project.yaml` are installed.

### modules
The `modules` directory contains project-specific `Bolt` modules, such as custom modules under
development.

### manifests
The `manifests` directory is used for Puppet manifest code that may be applied with Bolt.

### plans
The `plans` directory contains plans. [Plans reference](https://puppet.com/docs/bolt/latest/plans.html)

### tasks
The `tasks` directory contains tasks. [Tasks reference](https://puppet.com/docs/bolt/latest/tasks.html)

## Getting Help

* [#bolt on Slack](https://slack.puppet.com/) - Join the Bolt developers and community
