# Changelog

# [0.12.0](https://github.com/saltstack-formulas/logrotate-formula/compare/v0.11.5...v0.12.0) (2021-07-07)


### Continuous Integration

* **3003.1:** update inc. AlmaLinux, Rocky & `rst-lint` [skip ci] ([bb6bfac](https://github.com/saltstack-formulas/logrotate-formula/commit/bb6bfac80eade092222776d63040248ddd6bce6e))
* **commitlint:** ensure `upstream/master` uses main repo URL [skip ci] ([ac5a57c](https://github.com/saltstack-formulas/logrotate-formula/commit/ac5a57c76d171492bb87be9476514e26d32016d2))
* **gemfile+lock:** use `ssf` customised `kitchen-docker` repo [skip ci] ([7368305](https://github.com/saltstack-formulas/logrotate-formula/commit/7368305919c2ac67e94e5c1f017e909957733659))
* **kitchen+gitlab:** remove Ubuntu 16.04 & Fedora 32 (EOL) [skip ci] ([1f55b57](https://github.com/saltstack-formulas/logrotate-formula/commit/1f55b57a61278f96926566aa48c25026e5740e24))
* add `arch-master` to matrix and update `.travis.yml` [skip ci] ([84b2f6a](https://github.com/saltstack-formulas/logrotate-formula/commit/84b2f6aa991da969a28c455e6b7f8b4ed69d8ce9))
* **gitlab-ci:** add `rubocop` linter (with `allow_failure`) [skip ci] ([1fc52cd](https://github.com/saltstack-formulas/logrotate-formula/commit/1fc52cd2339c8ecef93de9fca4b9edcfd16464c3))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([94c2cf7](https://github.com/saltstack-formulas/logrotate-formula/commit/94c2cf7d2cc49802fda5baee93efcc1509227ffe))
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] ([406dbbb](https://github.com/saltstack-formulas/logrotate-formula/commit/406dbbb4e594bc9ff14267f39d3acaca77510860))
* **kitchen+gitlab:** adjust matrix to add `3003` [skip ci] ([b198955](https://github.com/saltstack-formulas/logrotate-formula/commit/b198955b5f324323c51dbdac13ea5825f424656f))
* **kitchen+gitlab-ci:** use latest pre-salted images [skip ci] ([ea66a0d](https://github.com/saltstack-formulas/logrotate-formula/commit/ea66a0d2b85635dc66088caac94614191a772a9d))
* **pre-commit:** add to formula [skip ci] ([e506d69](https://github.com/saltstack-formulas/logrotate-formula/commit/e506d6954ddba83146afc98e9338e68a8ffbfcb6))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([267bb94](https://github.com/saltstack-formulas/logrotate-formula/commit/267bb944a4b889234b438b46bf03e7b8d13482b4))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([bd1dc81](https://github.com/saltstack-formulas/logrotate-formula/commit/bd1dc81dcbf7f031cb58ce74cb43443194a24b1d))
* **pre-commit:** update hook for `rubocop` [skip ci] ([2c964b0](https://github.com/saltstack-formulas/logrotate-formula/commit/2c964b09e4b3450356e5bc1bac7a880fc2cbed18))


### Features

* **jobs:** add `jobs: {}` to defaults and state to init ([c3b64d3](https://github.com/saltstack-formulas/logrotate-formula/commit/c3b64d37a7c06d143df3a474d9129cb860fe17c7)), closes [#57](https://github.com/saltstack-formulas/logrotate-formula/issues/57)


### Tests

* **alma+rocky:** add platforms (based on CentOS 8) [skip ci] ([dc63042](https://github.com/saltstack-formulas/logrotate-formula/commit/dc630420a5715f26276707adf00866ef882d4cb4))
* standardise use of `share` suite & `_mapdata` state [skip ci] ([650cfad](https://github.com/saltstack-formulas/logrotate-formula/commit/650cfaddf026badfb926bb39643021d9d4918880))
* **base:** update from `template-formula` and Arch Linux exclusion ([09d4f5a](https://github.com/saltstack-formulas/logrotate-formula/commit/09d4f5a0341f1f4c5644742631c749f1cb78409d))
* **rubocop:** fix violation [skip ci] ([3f5edef](https://github.com/saltstack-formulas/logrotate-formula/commit/3f5edefc18b606fbb205de22d0286393714750e6))

## [0.11.5](https://github.com/saltstack-formulas/logrotate-formula/compare/v0.11.4...v0.11.5) (2020-06-29)


### Bug Fixes

* **debian-10:** disable login_records, they're managed by the package ([335c9e6](https://github.com/saltstack-formulas/logrotate-formula/commit/335c9e63087a4d6b93d1283547cc4094bcf5d581))


### Continuous Integration

* **kitchen:** use `saltimages` Docker Hub where available [skip ci] ([8f32221](https://github.com/saltstack-formulas/logrotate-formula/commit/8f32221ba450b14db5227f4a579cdcfd1876a67d))
* **kitchen+travis:** use latest pre-salted images [skip ci] ([e18246d](https://github.com/saltstack-formulas/logrotate-formula/commit/e18246d89bc83097ae1ee1ab887b884b7a2ad84d))
* **travis:** add notifications => zulip [skip ci] ([d1c1a81](https://github.com/saltstack-formulas/logrotate-formula/commit/d1c1a81aa2a6ff62796dfa04aba6e093a2129a5e))

## [0.11.4](https://github.com/saltstack-formulas/logrotate-formula/compare/v0.11.3...v0.11.4) (2020-05-07)


### Bug Fixes

* make necessary modifications to get working on `salt-ssh` ([57c88a8](https://github.com/saltstack-formulas/logrotate-formula/commit/57c88a81403726431377acf3e87fec6abae34b1f)), closes [/freenode.logbot.info/saltstack-formulas/20200506#c3811885-c3812572](https://github.com//freenode.logbot.info/saltstack-formulas/20200506/issues/c3811885-c3812572)


### Continuous Integration

* **gemfile.lock:** add to repo with updated `Gemfile` [skip ci] ([a5cf505](https://github.com/saltstack-formulas/logrotate-formula/commit/a5cf505cc018180361a6f2c9d9c21b4595f2632a))
* **kitchen+travis:** remove `master-py2-arch-base-latest` [skip ci] ([bf6f940](https://github.com/saltstack-formulas/logrotate-formula/commit/bf6f9406daad33586aef93a864564206642ffeac))
* **workflows/commitlint:** add to repo [skip ci] ([4c2a90b](https://github.com/saltstack-formulas/logrotate-formula/commit/4c2a90bccd53a6079aac13cacafc396ad28660c3))

## [0.11.3](https://github.com/saltstack-formulas/logrotate-formula/compare/v0.11.2...v0.11.3) (2020-03-22)


### Bug Fixes

* **release.config.js:** use full commit hash in commit link [skip ci] ([c79d42e](https://github.com/saltstack-formulas/logrotate-formula/commit/c79d42e0e0d9ef87aa697969ee5027a16d143595))


### Continuous Integration

* **gemfile:** restrict `train` gem version until upstream fix [skip ci] ([e6a2d52](https://github.com/saltstack-formulas/logrotate-formula/commit/e6a2d52a4c6b448e136618cbf493a360ed18a6c7))
* **kitchen:** avoid using bootstrap for `master` instances [skip ci] ([6200869](https://github.com/saltstack-formulas/logrotate-formula/commit/6200869f7a04a4b2f69d763744e65047f879f2dd))
* **kitchen:** ensure `cron` installed on `Debian` ([4401a20](https://github.com/saltstack-formulas/logrotate-formula/commit/4401a206710af159c04c95ea31d2a36585233c46))
* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([7ba188f](https://github.com/saltstack-formulas/logrotate-formula/commit/7ba188f535502e641a0a429a65fa0e0f788ef7b9))
* **kitchen:** use `develop` image until `master` is ready (`amazonlinux`) [skip ci] ([c4a1fa9](https://github.com/saltstack-formulas/logrotate-formula/commit/c4a1fa9f6ffc6ef5b8b93d0d71719184294b3217))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release [skip ci] ([74ab7a1](https://github.com/saltstack-formulas/logrotate-formula/commit/74ab7a144d73c9159e078a8711edfe1df2dc191e))
* **travis:** apply changes from build config validation [skip ci] ([4e65a71](https://github.com/saltstack-formulas/logrotate-formula/commit/4e65a7197b637e9f243a01be52f9b67e148c708e))
* **travis:** opt-in to `dpl v2` to complete build config validation [skip ci] ([05f9738](https://github.com/saltstack-formulas/logrotate-formula/commit/05f973872e814545dadb991eedbd93333330db48))
* **travis:** quote pathspecs used with `git ls-files` [skip ci] ([b7ff28d](https://github.com/saltstack-formulas/logrotate-formula/commit/b7ff28d630908a0962b50a4934bec42fd062b304))
* **travis:** run `shellcheck` during lint job [skip ci] ([b60e2ab](https://github.com/saltstack-formulas/logrotate-formula/commit/b60e2abf734bbd6ea0c11559fc6f965b28a9ced9))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([a75723c](https://github.com/saltstack-formulas/logrotate-formula/commit/a75723cbe59b1a4c55c809bde580f6b302447d76))
* **travis:** use `major.minor` for `semantic-release` version [skip ci] ([d08d9bf](https://github.com/saltstack-formulas/logrotate-formula/commit/d08d9bfa06300073e768d7a7b1471af3cc89a203))
* **travis:** use build config validation (beta) [skip ci] ([ef455ff](https://github.com/saltstack-formulas/logrotate-formula/commit/ef455fffae2dce9c11fdfaa877fb0003a402890d))


### Documentation

* **contributing:** remove to use org-level file instead [skip ci] ([01493e9](https://github.com/saltstack-formulas/logrotate-formula/commit/01493e95a947306bd0c2c43c5f076c18cb60843b))
* **readme:** update link to `CONTRIBUTING` [skip ci] ([d2ee252](https://github.com/saltstack-formulas/logrotate-formula/commit/d2ee2524cdc8ae37e44ea2d002ebf7b0de6ff466))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([ebd94f0](https://github.com/saltstack-formulas/logrotate-formula/commit/ebd94f078e2418ebd9f738150da223e4bef9b807))

## [0.11.2](https://github.com/saltstack-formulas/logrotate-formula/compare/v0.11.1...v0.11.2) (2019-10-11)


### Bug Fixes

* **rubocop:** add fixes using `rubocop --safe-auto-correct` ([](https://github.com/saltstack-formulas/logrotate-formula/commit/de80802))
* **rubocop:** fix remaining errors manually ([](https://github.com/saltstack-formulas/logrotate-formula/commit/401493b))


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([](https://github.com/saltstack-formulas/logrotate-formula/commit/e98975f))
* **kitchen:** install required packages to bootstrapped `opensuse` [skip ci] ([](https://github.com/saltstack-formulas/logrotate-formula/commit/4e76aa3))
* **kitchen:** use bootstrapped `opensuse` images until `2019.2.2` [skip ci] ([](https://github.com/saltstack-formulas/logrotate-formula/commit/26582d7))
* **platform:** add `arch-base-latest` (commented out for now) [skip ci] ([](https://github.com/saltstack-formulas/logrotate-formula/commit/7e0f2b4))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/logrotate-formula/commit/a66f4fe))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/logrotate-formula/commit/f31e348))
* use `dist: bionic` & apply `opensuse-leap-15` SCP error workaround ([](https://github.com/saltstack-formulas/logrotate-formula/commit/b836a66))
* **travis:** merge `rubocop` linter into main `lint` job ([](https://github.com/saltstack-formulas/logrotate-formula/commit/b8d7987))
* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([](https://github.com/saltstack-formulas/logrotate-formula/commit/7544833))

## [0.11.1](https://github.com/saltstack-formulas/logrotate-formula/compare/v0.11.0...v0.11.1) (2019-09-01)


### Continuous Integration

* **kitchen+travis:** replace EOL pre-salted images ([cc3fa62](https://github.com/saltstack-formulas/logrotate-formula/commit/cc3fa62))


### Tests

* **inspec:** improve to work on `amazon` as well ([be09e0d](https://github.com/saltstack-formulas/logrotate-formula/commit/be09e0d))

# [0.11.0](https://github.com/saltstack-formulas/logrotate-formula/compare/v0.10.0...v0.11.0) (2019-08-10)


### Features

* **yamllint:** include for this repo and apply rules throughout ([86aed1e](https://github.com/saltstack-formulas/logrotate-formula/commit/86aed1e))

# [0.10.0](https://github.com/saltstack-formulas/logrotate-formula/compare/v0.9.0...v0.10.0) (2019-06-25)


### Bug Fixes

* **test:** on suse using and additional kitchen state ([21a1866](https://github.com/saltstack-formulas/logrotate-formula/commit/21a1866))


### Features

* implement semantic release ([ef086b2](https://github.com/saltstack-formulas/logrotate-formula/commit/ef086b2))
