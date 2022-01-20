# jboss-jdbc

Jan 20, 2022

This repo contains JDBC drivers organised as JBoss modules.

The intention is for other JBoss projects to use the gitmodules
mechanism to include this repo as a submodule.

This means that JDBC drivers do not need to be included in every
repo, they can be stored centrally here and then simply referenced
via the git submodule mechanism.

## git commands

To create the initial link:

    git submodule add https://github.com/aushacker/jboss-jdbc.git <path>

To update the parent when changes are made to jboss-jdbc:

    git submodule foreach git pull origin main
