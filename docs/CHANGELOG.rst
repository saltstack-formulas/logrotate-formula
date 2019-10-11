
Changelog
=========

`0.11.2 <https://github.com/saltstack-formulas/logrotate-formula/compare/v0.11.1...v0.11.2>`_ (2019-10-11)
--------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **rubocop:** add fixes using ``rubocop --safe-auto-correct`` (\ ` <https://github.com/saltstack-formulas/logrotate-formula/commit/de80802>`_\ )
* **rubocop:** fix remaining errors manually (\ ` <https://github.com/saltstack-formulas/logrotate-formula/commit/401493b>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** change ``log_level`` to ``debug`` instead of ``info`` (\ ` <https://github.com/saltstack-formulas/logrotate-formula/commit/e98975f>`_\ )
* **kitchen:** install required packages to bootstrapped ``opensuse`` [skip ci] (\ ` <https://github.com/saltstack-formulas/logrotate-formula/commit/4e76aa3>`_\ )
* **kitchen:** use bootstrapped ``opensuse`` images until ``2019.2.2`` [skip ci] (\ ` <https://github.com/saltstack-formulas/logrotate-formula/commit/26582d7>`_\ )
* **platform:** add ``arch-base-latest`` (commented out for now) [skip ci] (\ ` <https://github.com/saltstack-formulas/logrotate-formula/commit/7e0f2b4>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/logrotate-formula/commit/a66f4fe>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/logrotate-formula/commit/f31e348>`_\ )
* use ``dist: bionic`` & apply ``opensuse-leap-15`` SCP error workaround (\ ` <https://github.com/saltstack-formulas/logrotate-formula/commit/b836a66>`_\ )
* **travis:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/saltstack-formulas/logrotate-formula/commit/b8d7987>`_\ )
* **yamllint:** add rule ``empty-values`` & use new ``yaml-files`` setting (\ ` <https://github.com/saltstack-formulas/logrotate-formula/commit/7544833>`_\ )

`0.11.1 <https://github.com/saltstack-formulas/logrotate-formula/compare/v0.11.0...v0.11.1>`_ (2019-09-01)
--------------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+travis:** replace EOL pre-salted images (\ `cc3fa62 <https://github.com/saltstack-formulas/logrotate-formula/commit/cc3fa62>`_\ )

Tests
^^^^^


* **inspec:** improve to work on ``amazon`` as well (\ `be09e0d <https://github.com/saltstack-formulas/logrotate-formula/commit/be09e0d>`_\ )

`0.11.0 <https://github.com/saltstack-formulas/logrotate-formula/compare/v0.10.0...v0.11.0>`_ (2019-08-10)
--------------------------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **yamllint:** include for this repo and apply rules throughout (\ `86aed1e <https://github.com/saltstack-formulas/logrotate-formula/commit/86aed1e>`_\ )

`0.10.0 <https://github.com/saltstack-formulas/logrotate-formula/compare/v0.9.0...v0.10.0>`_ (2019-06-25)
-------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **test:** on suse using and additional kitchen state (\ `21a1866 <https://github.com/saltstack-formulas/logrotate-formula/commit/21a1866>`_\ )

Features
^^^^^^^^


* implement semantic release (\ `ef086b2 <https://github.com/saltstack-formulas/logrotate-formula/commit/ef086b2>`_\ )
