logrotate
=========
Install and configure logrotate on a machine.

The config files are per OS.
At the moment only Debian, RedHat and Archlinux supported with this formula

.. note::
    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``logrotate``
-------------

Installs the ``logrotate`` package and service/timer/cron.

``logrotate.config``
--------------------

Manages logrotate config and include dir.
