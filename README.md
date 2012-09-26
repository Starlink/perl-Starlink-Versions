Starlink::Versions
------------------

This module provides a standard interface to the various ways of obtaining the
version of a [Starlink](http://www.starlink.ac.uk) application. It includes the
`starversion` command for easily obtaining a version.

Obtain the overall Starlink version information:

    % starversion
    master @ 3747d7a92abf003c30e01ee5338d6cc54b0477ba (2012-09-26T13:50:43)

Obtain the version of an application

    % starversion kappa
    V2.0-3

Installation
============

This is a standard perl distribution that should be installed by default with any
Starlink distribution.

    perl Build.PL
    ./Build
    ./Build test
    ./Build install

