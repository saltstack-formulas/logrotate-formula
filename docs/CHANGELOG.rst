
Changelog
=========

`0.11.5 <https://github.com/saltstack-formulas/logrotate-formula/compare/v0.11.4...v0.11.5>`_ (2020-06-29)
--------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **debian-10:** disable login_records, they're managed by the package (\ `335c9e6 <https://github.com/saltstack-formulas/logrotate-formula/commit/335c9e63087a4d6b93d1283547cc4094bcf5d581>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** use ``saltimages`` Docker Hub where available [skip ci] (\ `8f32221 <https://github.com/saltstack-formulas/logrotate-formula/commit/8f32221ba450b14db5227f4a579cdcfd1876a67d>`_\ )
* **kitchen+travis:** use latest pre-salted images [skip ci] (\ `e18246d <https://github.com/saltstack-formulas/logrotate-formula/commit/e18246d89bc83097ae1ee1ab887b884b7a2ad84d>`_\ )
* **travis:** add notifications => zulip [skip ci] (\ `d1c1a81 <https://github.com/saltstack-formulas/logrotate-formula/commit/d1c1a81aa2a6ff62796dfa04aba6e093a2129a5e>`_\ )

`0.11.4 <https://github.com/saltstack-formulas/logrotate-formula/compare/v0.11.3...v0.11.4>`_ (2020-05-07)
--------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* make necessary modifications to get working on ``salt-ssh`` (\ `57c88a8 <https://github.com/saltstack-formulas/logrotate-formula/commit/57c88a81403726431377acf3e87fec6abae34b1f>`_\ ), closes `/freenode.logbot.info/saltstack-formulas/20200506#c3811885-c3812572 <https://github.com//freenode.logbot.info/saltstack-formulas/20200506/issues/c3811885-c3812572>`_

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile.lock:** add to repo with updated ``Gemfile`` [skip ci] (\ `a5cf505 <https://github.com/saltstack-formulas/logrotate-formula/commit/a5cf505cc018180361a6f2c9d9c21b4595f2632a>`_\ )
* **kitchen+travis:** remove ``master-py2-arch-base-latest`` [skip ci] (\ `bf6f940 <https://github.com/saltstack-formulas/logrotate-formula/commit/bf6f9406daad33586aef93a864564206642ffeac>`_\ )
* **workflows/commitlint:** add to repo [skip ci] (\ `4c2a90b <https://github.com/saltstack-formulas/logrotate-formula/commit/4c2a90bccd53a6079aac13cacafc396ad28660c3>`_\ )

`0.11.3 <https://github.com/saltstack-formulas/logrotate-formula/compare/v0.11.2...v0.11.3>`_ (2020-03-22)
--------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **release.config.js:** use full commit hash in commit link [skip ci] (\ `c79d42e <https://github.com/saltstack-formulas/logrotate-formula/commit/c79d42e0e0d9ef87aa697969ee5027a16d143595>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile:** restrict ``train`` gem version until upstream fix [skip ci] (\ `e6a2d52 <https://github.com/saltstack-formulas/logrotate-formula/commit/e6a2d52a4c6b448e136618cbf493a360ed18a6c7>`_\ )
* **kitchen:** avoid using bootstrap for ``master`` instances [skip ci] (\ `6200869 <https://github.com/saltstack-formulas/logrotate-formula/commit/6200869f7a04a4b2f69d763744e65047f879f2dd>`_\ )
* **kitchen:** ensure ``cron`` installed on ``Debian`` (\ `4401a20 <https://github.com/saltstack-formulas/logrotate-formula/commit/4401a206710af159c04c95ea31d2a36585233c46>`_\ )
* **kitchen:** use ``debian-10-master-py3`` instead of ``develop`` [skip ci] (\ `7ba188f <https://github.com/saltstack-formulas/logrotate-formula/commit/7ba188f535502e641a0a429a65fa0e0f788ef7b9>`_\ )
* **kitchen:** use ``develop`` image until ``master`` is ready (\ ``amazonlinux``\ ) [skip ci] (\ `c4a1fa9 <https://github.com/saltstack-formulas/logrotate-formula/commit/c4a1fa9f6ffc6ef5b8b93d0d71719184294b3217>`_\ )
* **kitchen+travis:** upgrade matrix after ``2019.2.2`` release [skip ci] (\ `74ab7a1 <https://github.com/saltstack-formulas/logrotate-formula/commit/74ab7a144d73c9159e078a8711edfe1df2dc191e>`_\ )
* **travis:** apply changes from build config validation [skip ci] (\ `4e65a71 <https://github.com/saltstack-formulas/logrotate-formula/commit/4e65a7197b637e9f243a01be52f9b67e148c708e>`_\ )
* **travis:** opt-in to ``dpl v2`` to complete build config validation [skip ci] (\ `05f9738 <https://github.com/saltstack-formulas/logrotate-formula/commit/05f973872e814545dadb991eedbd93333330db48>`_\ )
* **travis:** quote pathspecs used with ``git ls-files`` [skip ci] (\ `b7ff28d <https://github.com/saltstack-formulas/logrotate-formula/commit/b7ff28d630908a0962b50a4934bec42fd062b304>`_\ )
* **travis:** run ``shellcheck`` during lint job [skip ci] (\ `b60e2ab <https://github.com/saltstack-formulas/logrotate-formula/commit/b60e2abf734bbd6ea0c11559fc6f965b28a9ced9>`_\ )
* **travis:** update ``salt-lint`` config for ``v0.0.10`` [skip ci] (\ `a75723c <https://github.com/saltstack-formulas/logrotate-formula/commit/a75723cbe59b1a4c55c809bde580f6b302447d76>`_\ )
* **travis:** use ``major.minor`` for ``semantic-release`` version [skip ci] (\ `d08d9bf <https://github.com/saltstack-formulas/logrotate-formula/commit/d08d9bfa06300073e768d7a7b1471af3cc89a203>`_\ )
* **travis:** use build config validation (beta) [skip ci] (\ `ef455ff <https://github.com/saltstack-formulas/logrotate-formula/commit/ef455fffae2dce9c11fdfaa877fb0003a402890d>`_\ )

Documentation
^^^^^^^^^^^^^


* **contributing:** remove to use org-level file instead [skip ci] (\ `01493e9 <https://github.com/saltstack-formulas/logrotate-formula/commit/01493e95a947306bd0c2c43c5f076c18cb60843b>`_\ )
* **readme:** update link to ``CONTRIBUTING`` [skip ci] (\ `d2ee252 <https://github.com/saltstack-formulas/logrotate-formula/commit/d2ee2524cdc8ae37e44ea2d002ebf7b0de6ff466>`_\ )

Performance Improvements
^^^^^^^^^^^^^^^^^^^^^^^^


* **travis:** improve ``salt-lint`` invocation [skip ci] (\ `ebd94f0 <https://github.com/saltstack-formulas/logrotate-formula/commit/ebd94f078e2418ebd9f738150da223e4bef9b807>`_\ )

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
