# Devops

The following documentation describes any devops practices for this project.

## Continuous Build

With the exception of non-impacting code changes like documentation, any new pull request should automatically trigger build a liveCD ISO image with the new changes. Unsuccessful builds are not merged into the main branch.

## Trunk-based Development

Pull requests should last as most a day before it is either merged into or denied from the master branch. In other words, each pull request should contain at most around a day's worth of work. 
