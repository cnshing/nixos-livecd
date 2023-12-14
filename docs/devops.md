# Devops

The following documentation describes any devops practices for this project.

## Continuous Build

With the exception of non-impacting code changes like documentation, any new pull request should automatically trigger build a liveCD ISO image with the new changes. Unsuccessful builds are not merged into the main branch.

You can see what liveCD formats we currently support by checking the automatic build liveCD [workflow](https://github.com/cnshing/nixos-livecd/blob/main/.github/workflows/automatic-build-livecd.yml). Any non-supported liveCD can optionally be retrieved as an artifact through a workflow [dispatch](https://github.com/cnshing/nixos-livecd/actions/workflows/build-livecd.yml).

### Optimizations 

In our current implementation, some builds appear to instantaneously pass but no attempts to actually build the liveCD were made. This behavior is intended for situations where an identical referable build was already made before or when code changes are certain to be non-impactful under the [pre criteria assessment](https://github.com/cnshing/nixos-livecd/blob/main/.github/actions/pre-criteria-assessment/action.yml) module.

## Trunk-based Development

Pull requests should last as most a day before it is either merged into or denied from the master branch. In other words, each pull request should contain at most around a day's worth of work. 
