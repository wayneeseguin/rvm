RVM mixed mode can be enabled on multiuser installations.

To use rubies and gemsets from user home run:

    rvm user all

To use only gemsets from user home run:

    rvm user gemsets

To use mixed gemsets from system and user home run:

    rvm user gemsets --append-system-gemsets

It is also possible to add this settings as default for new user accounts:

    sudo rvm user [all|gemsets] --skel

To restore multiuser defaults run:

    rvm user none
