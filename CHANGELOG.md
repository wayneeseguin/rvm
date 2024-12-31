# Change Log

## [Next](https://github.com/rvm/rvm/tree/HEAD)
[Full Changelog](https://github.com/rvm/rvm/compare/1.29.12...HEAD)

#### New features

* Use OpenSSL 3 for Ruby 3.2 and 3.3 [\#5480](https://github.com/rvm/rvm/pull/5480)
* Add Support for OpenSSL 1.1/3.0 to older ruby versions [\#5248](https://github.com/rvm/rvm/pull/5248)
* Update truffleruby-dev to use builds based on Ubuntu 20.04 [\#5322](https://github.com/rvm/rvm/issues/5322)
* Install openssl gem for Ruby 3.0.6 [\#5340](https://github.com/rvm/rvm/pull/5340)
* Speed up Solus requirements check by 25x [\#5472](https://github.com/rvm/rvm/pull/5472/)

#### Bug fixes

* Remove unsupported libclang, libclang-dev, openssl-dev and zlib-dev from Termux requirements, and fix installation by not calling getent [\#5101](https://github.com/rvm/rvm/pull/5101)
* Allow ruby-head to be installed using ruby 3, not truffleruby [\#5115](https://github.com/rvm/rvm/pull/5115)
* Fix attempts to install/uninstall ruby picking jruby, mruby or truffleruby instead [\#5116](https://github.com/rvm/rvm/pull/5116)
* Fix Termux requirements checking and installation, and the requirements specified [\#5110](https://github.com/rvm/rvm/pull/5110)
* Fix invalid brew syntax on requirements check [\#5111](https://github.com/rvm/rvm/pull/5111)
* Skip non-functional prepare/mount tests on macOS [\#5119](https://github.com/rvm/rvm/pull/5119)
* Fix detection for SUSE 15 [\#5132](https://github.com/rvm/rvm/pull/5132)
* Avoid duplicate package instances when querying pkg-config [\#5172](https://github.com/rvm/rvm/pull/5172)
* Fix building Ruby on Devuan 2 and newer by using libreadline-dev instead of libreadline6-dev [\#5214](https://github.com/rvm/rvm/pull/5214)
* Fix building Ruby on Void Linux by using openssl instead of libressl [\#5234](https://github.com/rvm/rvm/pull/5234)
* Fix building ruby-head by running autogen when available [\#5238](https://github.com/rvm/rvm/pull/5238)
* Fix building Ruby 2.7 on Fedora 36+ by using openssl1.1 instead of openssl3 [\#5247](https://github.com/rvm/rvm/pull/5247)
* Don't warn about empty GEM_PATH [\#5292](https://github.com/rvm/rvm/pull/5292)
* Detect existing Homebrew installs for MacOS arm64e in /opt/homebrew [\#5310](https://github.com/rvm/rvm/pull/5310)
* Fix installing rubies when home directory includes the gemset separator [\#3790](https://github.com/rvm/rvm/issues/3790)
* Replace keys.gnupg.net in favour of keyserver.ubuntu.com [\#5316](https://github.com/rvm/rvm/issues/5316)
* Fix non-silent failure on dash versions of /bin/sh [\#5167](https://github.com/rvm/rvm/pull/5167)
* Fix building Ruby 2.6, 2.5, 2.4 on Fedora 36+ by using openssl1.1 instead of openssl3 [\#5247](https://github.com/rvm/pull/5325)
* Fix truffleruby-23.0.0 installation on macos [\#5385](https://github.com/rvm/rvm/pull/5385)
* Update location of OpenSSL binary [\#5433](https://github.com/rvm/rvm/pull/5433)
* Fix gentoo dependencies moved from sys-devel to dev-build [\#5432](https://github.com/rvm/rvm/pull/5432)
* Fix truffleruby-head installation on macos-aarch64 [\#5446](https://github.com/rvm/rvm/pull/5446)
* Fix bug with Bootsnap on Ruby 3.3.1 [\#5457](https://github.com/rvm/rvm/pull/5457)
* Use pkgconf instead of pkg-config in Solus [\#5471](https://github.com/rvm/rvm/pull/5471)
* Install `libncurses-dev` instead of `libncurses5-dev` on newer Debian and Ubuntu versions [\#5477](https://github.com/rvm/rvm/pull/5477)
* Use `zlib-ng-compat` packages for Fedora 40+ [\#5479](https://github.com/rvm/rvm/pull/5479)
* Detect core count on ARM-based machines [\#5498](https://github.com/rvm/rvm/pull/5498)
* Fix requirement check for Ubuntu [\#5500](https://github.com/rvm/rvm/pull/5500)
* Update location of homebrew install script on osx [\#5505](https://github.com/rvm/rvm/pull/5505)
* Fix detection of Homebrew's write permissions when using Workbrew [\#5528](https://github.com/rvm/rvm/pull/5528)

#### New interpreters

##### MRI

* 2.5.9, 2.6.7, 2.7.3, 3.0.1 [\#5063](https://github.com/rvm/rvm/pull/5063)
* 2.6.8, 2.7.4, 3.0.2 [\#5098](https://github.com/rvm/rvm/pull/5098)
* 3.1.0-preview1 [\#5155](https://github.com/rvm/rvm/pull/5155)
* 2.6.9, 2.7.5, 3.0.3 [\#5157](https://github.com/rvm/rvm/pull/5157)
* 3.1.0 [\#5169](https://github.com/rvm/rvm/pull/5169)
* 3.1.1 [\#5185](https://github.com/rvm/rvm/pull/5185)
* 2.6.10, 2.7.6, 3.0.4, 3.1.2, 3.2.0 Preview 1 [\#5200](https://github.com/rvm/rvm/pull/5200)
* 2.7.7, 3.0.5, 3.1.3, 3.2.0 Preview 2 and 3.2.0 Preview 3 [\#5271](https://github.com/rvm/rvm/pull/5271)
* 3.2.0-rc1 [\#5280](https://github.com/rvm/rvm/pull/5280)
* 3.2.0 [\#5283](https://github.com/rvm/rvm/pull/5283)
* 3.2.1 [\#5306](https://github.com/rvm/rvm/pull/5306)
* 3.2.2, 3.1.4, 3.0.6 and 2.7.8 [\#5336](https://github.com/rvm/rvm/pull/5336), [\#5346](https://github.com/rvm/rvm/pull/5346)
* 3.3.0-preview1 [\#5348](https://github.com/rvm/rvm/pull/5348)
* 3.3.0-preview2 [\#5391](https://github.com/rvm/rvm/pull/5391)
* 3.3.0-preview3 [\#5407](https://github.com/rvm/rvm/pull/5407)
* 3.3.0 [\#5421](https://github.com/rvm/rvm/pull/5421)
* 3.2.3 [\#5439](https://github.com/rvm/rvm/pull/5439)
* 3.0.7, 3.1.5, 3.2.4, 3.3.1 [\#5455](https://github.com/rvm/rvm/pull/5455)
* 3.4.0-preview1 [\#5466](https://github.com/rvm/rvm/pull/5466)
* 3.3.2 [\#5470](https://github.com/rvm/rvm/pull/5470)
* 3.3.3 [\#5474](https://github.com/rvm/rvm/pull/5474)
* 3.3.4 [\#5488](https://github.com/rvm/rvm/pull/5488)
* 3.2.5 [\#5490](https://github.com/rvm/rvm/pull/5490)
* 3.3.5 [\#5499](https://github.com/rvm/rvm/pull/5499)
* 3.2.6, 3.3.6 [\#5513](https://github.com/rvm/rvm/pull/5513)
* 3.4.0, 3.4.1 [\#5533](https://github.com/rvm/rvm/pull/5533)

##### TruffleRuby

* 21.0.0 [\#5037](https://github.com/rvm/rvm/pull/5037)
* 21.1.0 [\#5071](https://github.com/rvm/rvm/pull/5071)
* 21.2.0, 21.2.0.1, 21.3.0 [\#5137](https://github.com/rvm/rvm/pull/5137)
* 22.0.0.2 [\#5177](https://github.com/rvm/rvm/pull/5177)
* 22.1.0 [\#5206](https://github.com/rvm/rvm/pull/5206)
* 22.2.0, 22.3.0, 22.3.1, 23.0.0-preview1, 23.0.0, 23.1.0, 23.1.1, 23.1.2, 24.0.0, 24.0.1, 24.0.2, 24.1.0, 24.1.1

##### JRuby
* 9.2.15.0 and 9.2.16.0 [\#5056](https://github.com/rvm/rvm/pull/5056)
* 9.2.17.0 [\#5062](https://github.com/rvm/rvm/pull/5062)
* 9.2.18.0 [\#5091](https://github.com/rvm/rvm/pull/5091)
* 9.2.19.0 [\#5094](https://github.com/rvm/rvm/pull/5094)
* 9.2.20.0 [\#5145](https://github.com/rvm/rvm/pull/5145)
* 9.2.20.1 [\#5160](https://github.com/rvm/rvm/pull/5160)
* 9.2.21.0 [\#5230](https://github.com/rvm/rvm/pull/5230)
* 9.3.0.0 [\#5130](https://github.com/rvm/rvm/pull/5130)
* 9.3.1.0 [\#5135](https://github.com/rvm/rvm/pull/5135)
* 9.3.2.0 [\#5163](https://github.com/rvm/rvm/pull/5163)
* 9.3.3.0 [\#5175](https://github.com/rvm/rvm/pull/5175)
* 9.3.4.0 [\#5195](https://github.com/rvm/rvm/pull/5163)
* 9.3.6.0 [\#5230](https://github.com/rvm/rvm/pull/5230)
* 9.3.7.0 [\#5245](https://github.com/rvm/rvm/pull/5245)
* 9.3.8.0 [\#5250](https://github.com/rvm/rvm/pull/5250)
* 9.3.9.0 [\#5258](https://github.com/rvm/rvm/pull/5258)
* 9.3.10.0 [\#5300](https://github.com/rvm/rvm/pull/5300)
* 9.3.11.0 [\#5390](https://github.com/rvm/rvm/pull/5390)
* 9.3.13.0 [\#5405](https://github.com/rvm/rvm/pull/5405)
* 9.3.14.0 [\#5443](https://github.com/rvm/rvm/pull/5443)
* 9.3.15.0 [\#5482](https://github.com/rvm/rvm/pull/5482)
* 9.4.0.0 [\#5270](https://github.com/rvm/rvm/pull/5270)
* 9.4.1.0 [\#5304](https://github.com/rvm/rvm/pull/5304)
* 9.4.2.0 [\#5333](https://github.com/rvm/rvm/pull/5333)
* 9.4.3.0 [\#5357](https://github.com/rvm/rvm/pull/5357)
* 9.4.4.0 [\#5399](https://github.com/rvm/rvm/pull/5399)
* 9.4.5.0 [\#5405](https://github.com/rvm/rvm/pull/5405)
* 9.4.6.0 [\#5443](https://github.com/rvm/rvm/pull/5443)
* 9.4.7.0 [\#5449](https://github.com/rvm/rvm/pull/5449)
* 9.4.8.0 [\#5484](https://github.com/rvm/rvm/pull/5484)
* 9.4.9.0 [\#5512](https://github.com/rvm/rvm/pull/5512)

##### Railsexpress patches

* 2.6.7, 2.7.3, 3.0.1 [\#5066](https://github.com/rvm/rvm/pull/5066)
* 2.6.8, 2.7.4, 3.0.2 [\#5117](https://github.com/rvm/rvm/pull/5117)
* 2.6.9, 2.7.5, 3.0.3 [\#5167](https://github.com/rvm/rvm/pull/5167)
* 3.1.0 [\#5170](https://github.com/rvm/rvm/pull/5170)
* 3.1.1 [\#5190](https://github.com/rvm/rvm/pull/5190)
* 2.7.6, 3.0.4 and 3.1.2 [\#5207](https://github.com/rvm/rvm/pull/5207)
* 2.7.7, 3.0.5 and 3.1.3 [\#5273](https://github.com/rvm/rvm/pull/5273)
* 3.2.0 [\#5284](https://github.com/rvm/rvm/pull/5284) and [\#5312](https://github.com/rvm/rvm/pull/5312)
* 3.2.1 [\#5311](https://github.com/rvm/rvm/pull/5311) and [\#5312](https://github.com/rvm/rvm/pull/5312)
* 3.2.2, 3.1.4, 3.0.6 and 2.7.8 [\#5338](https://github.com/rvm/rvm/pull/5338)
* 3.3.0 [\#5423](https://github.com/rvm/rvm/pull/5423)
* 3.2.3 [\#5430](https://github.com/rvm/rvm/pull/5430)
* 3.0.7, 3.1.5, 3.2.4 and 3.3.1 [\#5465](https://github.com/rvm/rvm/pull/5465)
* 3.1.6, 3.2.5, 3.3.2, 3.3.3 and 3.3.4 [\#5491](https://github.com/rvm/rvm/pull/5491)

#### Binaries

* Redhat decendants
  * CentOS 7 x86_64 binaries
    * 2.5.9 2.6.10 2.7.4 2.7.5 2.7.6 2.7.7 3.0.4 3.1.2 [\#5314](https://github.com/rvm/rvm/pull/5314)
  * CentOS 8 x86_64 binaries
    * 2.5.9 2.6.7 2.6.8 2.6.10 2.7.3 2.7.4 2.7.5 2.7.6 2.7.7 3.0.3 3.0.4 3.0.5 3.1.2 3.1.3 [\#5314](https://github.com/rvm/rvm/pull/5314)
  * CentOS 9 x86_64 binaries
    * 2.7.5 2.7.6 2.7.7 3.0.3 3.0.4 3.0.5 3.1.2 3.1.3 [\#5314](https://github.com/rvm/rvm/pull/5314)
  * Amazon 2 x86_64 binaries
    * 2.5.8 2.5.9 2.6.10 2.6.8 2.6.9 2.7.3 2.7.4 2.7.5 2.7.6 2.7.7 3.0.0 3.0.3 3.0.4 3.0.5 3.1.2 3.1.3 3.2.0 3.2.1 [\#5314](https://github.com/rvm/rvm/pull/5314)
* Debian Family
  * Debian 10 x86_64 binaries
    * 2.5.9 2.6.10 2.6.7 2.6.8 2.6.9 2.7.3 2.7.4 2.7.6 2.7.7 3.0.0 3.0.2 3.0.4 3.0.5 3.1.2 3.1.3 3.2.0 3.2.1 [\#5314](https://github.com/rvm/rvm/pull/5314)
  * Ubuntu 18.04 (Bionic) x86_64 binaries
    * 1.9.3-p392 1.9.3-p551 2.0.0-p648 2.5.9 2.6.10 2.6.7 2.6.8 2.6.9 2.7.3 2.7.4 2.7.5 2.7.6 2.7.7 3.0.0 3.0.1 3.0.2 3.0.3 3.0.4 3.0.5 3.1.0 3.1.1 3.1.2 3.1.3 3.2.0 3.2.1 [\#5314](https://github.com/rvm/rvm/pull/5314)
  * Ubuntu 20.04 (Focal) x64 binaries
    * Ruby 2.5.9 2.6.10 2.6.7 2.6.8 2.6.9 2.7.3 2.7.5 2.7.6 2.7.7 3.0.1 3.0.2 3.0.3 3.0.4 3.0.5 3.1.0 3.1.1 3.1.2 3.1.3 3.2.0 3.2.1 [\#5314](https://github.com/rvm/rvm/pull/5314)
  * Ubuntu 22.04 (Jammy) x64 binaries
    * Ruby 3.2.2 and 3.2.3 [\#5441](https://github.com/rvm/rvm/issues/5441)
    * Ruby 3.2.1 [\#5307](https://github.com/rvm/rvm/issues/5307)
    * Ruby 3.1.3 and 3.2.0 [\#5298](https://github.com/rvm/rvm/issues/5298)
    * Ruby 2.7.6, 2.7.7, 3.0.4, 3.0.5, 3.1.2 [\#5308](https://github.com/rvm/rvm/pull/5308)
  * Ubuntu 22.04 (Jammy) arm64 binaries
    * 2.7.6, 2.7.7, 3.0.4, 3.0.5, 3.1.2, 3.1.3, 3.2.0 and 3.2.1 [\#5308](https://github.com/rvm/rvm/pull/5308)
    * 3.0.6, 3.1.4 and 3.2.2 [\#5339](https://github.com/rvm/rvm/pull/5339)
  * Ubuntu 22.10 (Kinetic) x64 binaries
    * 3.0.5, 3.1.3, 3.2.0 and 3.2.1 [\#5308](https://github.com/rvm/rvm/pull/5308)
  * Ubuntu 24.04 (Noble Numbat) x64 binaries
    * 3.2.6 and 3.3.6 [\#5529](https://github.com/rvm/rvm/pull/5529)

#### Docs

* Replace unkind language that trivializes mental health [\#5134](https://github.com/rvm/rvm/pull/5134)
* Remove reference to Freenode [\#5317](https://github.com/rvm/rvm/pull/5317)
* Remove reference to subtrees, as we don't use them anymore [\#5318](https://github.com/rvm/rvm/pull/5318)
* Fix incorrect example for rvm_make_flags (string changed to array) [\#5425](https://github.com/rvm/rvm/pull/5425)

#### Infrastructure

* Migrate from rvm_io.global.ssl.fastly.net to rvm-io.global.ssl.fastly.net to fix domain fronting report from Fastly [\#5438](https://github.com/rvm/rvm/pull/5438)
* Upgrade github actions and truffleruby version in CI [\#5456](https://github.com/rvm/rvm/pull/5456)
* Parallelize GitHub Action jobs in CI [\#5458](https://github.com/rvm/rvm/pull/5458)
* Speed up CI process [\#5467](https://github.com/rvm/rvm/pull/5467)

## [1.29.12](https://github.com/rvm/rvm/releases/tag/1.29.12)
15 January 2021 - [Full Changelog](https://github.com/rvm/rvm/compare/1.29.11...1.29.12)

#### New features

* Added railsexpress patches for Ruby 3.0.0 [\#5026](https://github.com/rvm/rvm/pull/5026)

#### Bug fixes

* Requirement `glibc-headers` obsolete on Fedora 33 [\#5023](https://github.com/rvm/rvm/pull/5023)
* Fix unknown command wrappers with Rubygems >= 3.2 [\#5027](https://github.com/rvm/rvm/pull/5027)
* Fix errors in compilation+installation of Ruby 3 with Rubygems >= 3.2 [\#5030](https://github.com/rvm/rvm/pull/5030)
* Updated colours in the `ps1_functions` helper to support the `main` branch [\#5045](https://github.com/rvm/rvm/pull/5045)

#### Binaries

* Ubuntu
  * Ubuntu 20.04 x64 binaries
    * Ruby 3.0.0 [\#5031](https://github.com/rvm/rvm/issues/5031)
    * Recompiled 2.4.10, 2.5.8, 2.6.6, 2.7.1, 2.7.2 binaries for Ubuntu 20.04.1 [\#5032](https://github.com/rvm/rvm/pull/5032)

## [1.29.11](https://github.com/rvm/rvm/releases/tag/1.29.11)
29 December 2020 - [Full Changelog](https://github.com/rvm/rvm/compare/1.29.10...1.29.11)

#### New features

* Added railsexpress patches for Ruby 2.7.2 [\#4990](https://github.com/rvm/rvm/pull/4990)
* Added railsexpress patches for Ruby 2.5.8, 2.6.6 and 2.7.1 [\#4900](https://github.com/rvm/rvm/pull/4900)
* Add ruby-3 to the list of available binary builds [\#4984](https://github.com/rvm/rvm/pull/4984)
* Recognize `3*` as CRuby version number [\#4987](https://github.com/rvm/rvm/pull/4987)
* Alias `rvm gemset remove` as `rvm gemset delete` [\#4976](https://github.com/rvm/rvm/pull/4976)
* Alias `rvm gemset move` as `rvm gemset rename` [\#4976](https://github.com/rvm/rvm/pull/4976)
* Alias `rvm delete` as `rvm remove` [\#4976](https://github.com/rvm/rvm/pull/4976)

#### Bug fixes

* Use libssl-1.0 to install Ruby 1.8 on Debian 9 [\#4920](https://github.com/rvm/rvm/pull/4920)
* Use libssl-1.0 to install Ree 1.8 on Ubuntu [\#4996](https://github.com/rvm/rvm/pull/4920)
* Fix broken mergeable config [\#5001](https://github.com/rvm/rvm/pull/5001)
* Update brew list command to remove deprecation warning [\#4995](https://github.com/rvm/rvm/pull/4995) [\#5022](https://github.com/rvm/rvm/pull/5022)

#### New interpreters

* Add support for TruffleRuby 20.1.0, 20.2.0, 20.3.0
* Add support for Ruby 2.4.10, 2.5.8, 2.6.6, 2.7.1 [\#4899](https://github.com/rvm/rvm/pull/4899), 2.7.2 [\#4988](https://github.com/rvm/rvm/pull/4988), 3.0.0-preview1 [\#4983](https://github.com/rvm/rvm/pull/4983), 3.0.0-preview2[\#5009](https://github.com/rvm/rvm/pull/5009), 3.0.0-rc1[\#5015](https://github.com/rvm/rvm/pull/5015), and 3.0.0[\#5016](https://github.com/rvm/rvm/pull/5016)
* Add support for mruby 2.1.1-rc [\#4909](https://github.com/rvm/rvm/pull/4909), 2.1.1-rc2 and 2.1.1 [\#4948](https://github.com/rvm/rvm/pull/4948)
* Add support for TruffleRuby 19.0.2, 19.1.1, 19.2.1, 19.3.0.2 [\#4910](https://github.com/rvm/rvm/pull/4910)
* Add support for Rubinius 4.13-4.20 and 5.0 [\#4947](https://github.com/rvm/rvm/pull/4947)
* Add support for JRuby 9.2.12.0 [\#4960](https://github.com/rvm/rvm/pull/4960), 9.2.13.0 [\#4971](https://github.com/rvm/rvm/pull/4971) and 9.2.14.0 [\#5013](https://github.com/rvm/rvm/pull/5013)

#### Binaries

* Ubuntu
  * Ubuntu 20.04 x64 binaries
    * Ruby 2.4.10, 2.5.8, 2.6.6, 2.7.1 [\#4921](https://github.com/rvm/rvm/issues/4921)
    * Ruby 2.1.0-2.1.10, 2.2.0-2.2.10, 2.3.0-2.3.8, 2.4.0-2.4.9, 2.5.0-2.5.8, 2.6.0-2.6.5, 2.7.0 [\#4921](https://github.com/rvm/rvm/issues/4921)
    * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
  * Ubuntu 19.04 x64 binaries
    * Ruby 2.4.0-2.4.10, 2.5.0-2.5.8, 2.6.0-2.6.6, 2.7.0, 2.7.1 [\#4935](https://github.com/rvm/rvm/issues/4935)
    * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
  * Ubuntu 18.04 x64 binaries
    * Ruby 2.4.10, 2.5.8, 2.6.6, 2.7.1 [\#4904](https://github.com/rvm/rvm/issues/4904)
    * Ruby 2.4.8 [\#4916](https://github.com/rvm/rvm/issues/4916)
    * Ruby 2.1.0-2.1.10, 2.2.0-2.2.9, 2.3.0-2.3.6, 2.4.0-2.4.3 [\#4916](https://github.com/rvm/rvm/issues/4916)
    * Ruby 2.5.0 [\#4931](https://github.com/rvm/rvm/issues/4931)
    * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
  * Ubuntu 16.04 x64 binaries
    * Ruby 2.1.0-2.1.4, 2.1.6-2.1.8, 2.1.10, 2.2.0-2.2.4, 2.3.8, 2.4.5-2.4.10, 2.5.2-2.5.8, 2.6.0-2.6.6, 2.7.0-2.7.1 [\#4932](https://github.com/rvm/rvm/issues/4932)
    * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
  * Ubuntu 14.04 x64 binaries
    * Ruby 2.1.0-2.1.1, 2.1.4, 2.1.6-2.1.10, 2.2.2-2.2.10, 2.3.0-2.3.8, 2.4.0-2.4.10, 2.5.0-2.5.8, 2.6.0-2.6.6, 2.7.0-2.7.1 [\#4933](https://github.com/rvm/rvm/issues/4933)
    * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
  * Ubuntu 12.04 x64 binaries
    * Ruby 2.4.0-2.4.10, 2.5.0-2.5.8, 2.6.0-2.6.6, 2.7.0, 2.7.1 [\#4935](https://github.com/rvm/rvm/issues/4935)
* Debian
  * Debian 10 x64 binaries
    * Ruby 2.4.0-2.4.10, 2.5.0-2.5.8, 2.6.0-2.6.6, 2.7.0, 2.7.1 [\#4935](https://github.com/rvm/rvm/issues/4935)
    * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
  * Debian 9 x64 binaries
    * Ruby 2.4.0-2.4.10, 2.5.0-2.5.8, 2.6.0-2.6.6, 2.7.0, 2.7.1 [\#4935](https://github.com/rvm/rvm/issues/4935)
    * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
  * Debian 8 x64 binaries
    * Ruby 2.4.0-2.4.10, 2.5.0-2.5.8, 2.6.0-2.6.6, 2.7.0, 2.7.1 [\#4935](https://github.com/rvm/rvm/issues/4935)
    * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
* CentOS
  * CentOS 6 x64 binaries
    * Ruby 2.4.0-2.4.10, 2.5.0-2.5.8, 2.6.0-2.6.6, 2.7.0, 2.7.1 [\#4935](https://github.com/rvm/rvm/issues/4935)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
  * CentOS 7 x64 binaries
    * Ruby 2.4.0-2.4.10, 2.5.0-2.5.8, 2.6.0-2.6.6, 2.7.0, 2.7.1 [\#4935](https://github.com/rvm/rvm/issues/4935)
    * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
  * CentOS 8 x64 binaries
    * Ruby 2.4.0-2.4.10, 2.5.0-2.5.8, 2.6.0-2.6.6, 2.7.0, 2.7.1 [\#4936](https://github.com/rvm/rvm/issues/4936)
    * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
* Amazon Linux
  * Amazon Linux 2018.03 x64 binaries
    * Ruby 2.4.0-2.4.10, 2.5.0-2.5.8, 2.6.0-2.6.6, 2.7.0, 2.7.1 [\#4935](https://github.com/rvm/rvm/issues/4935)
    * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
  * Amazon Linux 2 x64 binaries
    * Ruby 2.4.0-2.4.10, 2.5.0-2.5.8, 2.6.0-2.6.6, 2.7.0, 2.7.1 [\#4935](https://github.com/rvm/rvm/issues/4935)
    * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
    * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)
* Oracle Linux 7 x64 binaries
  * Ruby 2.4.0-2.4.10, 2.5.0-2.5.8, 2.6.0-2.6.6, 2.7.0, 2.7.1 [\#4935](https://github.com/rvm/rvm/issues/4935)
  * Ruby 3.0.0-preview1 [\#4985](https://github.com/rvm/rvm/pull/4985)
  * Ruby 2.7.2 [\#4989](https://github.com/rvm/rvm/pull/4989)

## [1.29.10](https://github.com/rvm/rvm/releases/tag/1.29.10)
25 March 2020 - [Full Changelog](https://github.com/rvm/rvm/compare/1.29.9...1.29.10)

#### New features
* Improve JRuby install time [\#4807](https://github.com/rvm/rvm/pull/4807)
* Add Termux support [\#4749](https://github.com/rvm/rvm/pull/4749)
* Add support for `truffleruby-head` [\#4871](https://github.com/rvm/rvm/pull/4871)

#### New interpreters
* Add support for TruffleRuby 20.0.0
* Add support for TruffleRuby 19.3.1
* Add support for TruffleRuby 19.3.0
* Add support for Rubinius 4.4 and 4.5 [\#4735](https://github.com/rvm/rvm/pull/4735), 4.6 [\#4779](https://github.com/rvm/rvm/pull/4779), 4.7 [\#4821](https://github.com/rvm/rvm/pull/4821), 4.8, 4.9 [\#4842](https://github.com/rvm/rvm/pull/4842), 4.10 [\#4843](https://github.com/rvm/rvm/pull/4843), 4.11 and 4.12 [\#4846](https://github.com/rvm/rvm/pull/4846)
* Add support for JRuby 9.2.8.0 [\#4756](https://github.com/rvm/rvm/pull/4756), 9.2.9.0 [\#4812](https://github.com/rvm/rvm/pull/4812), 9.2.10.0 [\#4877](https://github.com/rvm/rvm/pull/4877), 9.2.11.0 [\#4881](https://github.com/rvm/rvm/pull/4881), 9.2.11.1 [\#4891](https://github.com/rvm/rvm/pull/4891)
* Add support for TruffleRuby 19.2.0 [\#4761](https://github.com/rvm/rvm/pull/4761), 19.2.0.1 [\#4784](https://github.com/rvm/rvm/pull/4784)
* Add support for Ruby 2.4.7, 2.5.6 [\#4767](https://github.com/rvm/rvm/pull/4767), 2.6.4 [\#4768](https://github.com/rvm/rvm/pull/4768), 2.4.8, 2.5.7, 2.6.5 [\#4793](https://github.com/rvm/rvm/pull/4793), 2.4.9 [\#4796](https://github.com/rvm/rvm/pull/4796), 2.7.0-preview2 [\#4805](https://github.com/rvm/rvm/pull/4805), 2.7.0-preview3 [\#4817](https://github.com/rvm/rvm/pull/4817), 2.7.0-rc1 [\#4831](https://github.com/rvm/rvm/pull/4831), 2.7.0-rc2 [\#4834](https://github.com/rvm/rvm/pull/4834), and 2.7.0 [\#4837](https://github.com/rvm/rvm/pull/4837)
* Add support for mruby 2.1.0 [\#4816](https://github.com/rvm/rvm/pull/4816)
* Add support for rubygems 3.0.5, 3.0.6 [\#4828](https://github.com/rvm/rvm/pull/4828)

#### Bug fixes
* Fix installer fetching RVM tags from Bitbucket [\#4730](https://github.com/rvm/rvm/pull/4730)
* Prevent downloading of null RVM versions in installer [\#4731](https://github.com/rvm/rvm/pull/4731)
* RVM package fails to configure on fresh Ubuntu 18.04 server install [\#4742](https://github.com/rvm/rvm/pull/4742)
* Ignore aliases when using `ls` command [\#4743](https://github.com/rvm/rvm/pull/4743) [\#4744](https://github.com/rvm/rvm/pull/4744)
* Export more shell functions which cause the subshell to choke [\#4745](https://github.com/rvm/rvm/pull/4745)
* Adds a check and returns if \_\_rvm\_remove\_from\_path is called with "/\*" [\#4759](https://github.com/rvm/rvm/issues/4759)
* Do not install `rubygems-bundler` by default on TruffleRuby to make `ruby -S bundle` work [\#4766](https://github.com/rvm/rvm/pull/4766)
* Fixes checksums for Ruby 2.6.4 [\#4769](https://github.com/rvm/rvm/pull/4769), 2.4.7 and 2.5.6 [\#4771](https://github.com/rvm/rvm/pull/4771)
* Update TruffleRuby dependencies [\#4815](https://github.com/rvm/rvm/pull/4815)
* Use ruby.git master instead of trunk [\#4840](https://github.com/rvm/rvm/pull/4840)
* Fix RVM version check when using a version newer than the latest release [#4872](https://github.com/rvm/rvm/pull/4872)

#### Changes
* Installer now reports which URL(s) have failed to fetch version information and when version fetching has completely failed [\#4731](https://github.com/rvm/rvm/pull/4731)
* Added railsexpress patches for Ruby 2.6.3 [\#4747](https://github.com/rvm/rvm/pull/4747), 2.6.6, 2.5.6 and 2.4.6 [\#4772](https://github.com/rvm/rvm/pull/4772)
* Fix string corruption bug on railsexpress ruby 2.6.4 [\#4778](https://github.com/rvm/rvm/pull/4778)
* Fix string corruption bug by default for ruby 2.6.4 [\#4780](https://github.com/rvm/rvm/pull/4780)
* Added railsexpress patches for Ruby 2.6.5, 2.5.7, 2.4.9 [\#4799](https://github.com/rvm/rvm/pull/4799) and 2.7.0, 2.7-head [\#4839](https://github.com/rvm/rvm/pull/4839)
* Install Opal globally  [\#4844](https://github.com/rvm/rvm/pull/4844)

#### Binaries:
* Ubuntu 18.04 x64 binaries
  * Ruby 2.4.7, 2.5.6, 2.6.4 [\#4788](https://github.com/rvm/rvm/issues/4788)
  * Ruby 2.4.9, 2.5.7, 2.6.5 [\#4795](https://github.com/rvm/rvm/issues/4795)
  * Ruby 2.7.0 [\#4856](https://github.com/rvm/rvm/issues/4856)

## [1.29.9](https://github.com/rvm/rvm/releases/tag/1.29.9)
10 July 2019 - [Full Changelog](https://github.com/rvm/rvm/compare/1.29.8...1.29.9)

#### New features
* Use remote .sha512 and .md5 if available (Rubinius) [\#4650](https://github.com/rvm/rvm/pull/4650)

#### New interpreters
* Add support for TruffleRuby 19.1.0
* Add support for TruffleRuby 19.0.0 [\#4689](https://github.com/rvm/rvm/pull/4689)
* Add support for Rubinius 4.1 [\#4706](https://github.com/rvm/rvm/pull/4706), 4.2 [\#4714](https://github.com/rvm/rvm/pull/4714), 4.3 [\#4727](https://github.com/rvm/rvm/pull/4727)
* Add support for Ruby 2.7.0 Preview 1 [\#4709](https://github.com/rvm/rvm/pull/4709)
* Add support for Rubygems 2.7.9, 2.7.10, 3.0.3, 3.0.4 [\#4718](https://github.com/rvm/rvm/pull/4718)

#### Bug fixes
* Fix rvm version validation per project [\#4692](https://github.com/rvm/rvm/pull/4692)
* Fix endless loop on macOS when listing remotes [\#4703](https://github.com/rvm/rvm/pull/4703)
* Filter redundant/incompatible rvm\_gem\_options [\#4705](https://github.com/rvm/rvm/pull/4705)
* Remove rvm_gems_path as part of __rvm_remove_rvm_from_path [\#4712](https://github.com/rvm/rvm/pull/4712)
* Fix checksum check condition to not try url if already found in config files [\#4707](https://github.com/rvm/rvm/pull/4707)
* Fix checksum check to only try url checksums for Rubinius [\#4717](https://github.com/rvm/rvm/pull/4717)
* Fix `sed: illegal option -- r` error on macOS when changing to any ruby directory [\#4711](https://github.com/rvm/rvm/pull/4711)
* Don't ignore `curl` error on repo tags fetch [\#4722](https://github.com/rvm/rvm/pull/4722)
* Use newer llvm on Mint 19.1+ [\#4642](https://github.com/rvm/rvm/pull/4642)
* Preserve the environment setting in rvmrc and .rvmrc in multi or mixed mode [\#4612](https://github.com/rvm/rvm/pull/4612)

#### Changes
* TruffleRuby is now always considered a "source Ruby" instead of both a source
  and binary Ruby to improve reliability and avoiding code duplication [\#4708](https://github.com/rvm/rvm/pull/4708)

## [1.29.8](https://github.com/rvm/rvm/releases/tag/1.29.8)
8 May 2019 - [Full Changelog](https://github.com/rvm/rvm/compare/1.29.7...1.29.8)

#### New features
* Upgrade RubyGems to version 3.0.2
* RailsExpress patches for 2.6.1 [\#4603](https://github.com/rvm/rvm/pull/4603), 2.5.4 and 2.6.2 [\#4637](https://github.com/rvm/rvm/pull/4637), 2.5.5 [\#4646](https://github.com/rvm/rvm/pull/4646)
* Add script to automatically register a new TruffleRuby release in RVM [\#4576](https://github.com/rvm/rvm/pull/4576)
* Add .rvmrc equivalents to install help [\#4652](https://github.com/rvm/rvm/pull/4652)
* Copy config.log for debugging if configure fails [\#4651](https://github.com/rvm/rvm/pull/4651)

#### New interpreters
* Add support for TruffleRuby
  * 1.0.0-rc(11,12,13,14,15,16) [\#4575](https://github.com/rvm/rvm/pull/4575)
* Add support for Ruby
  * 2.6.1 [\#4597](https://github.com/rvm/rvm/pull/4597)
  * 2.6.2 and 2.5.4 [\#4636](https://github.com/rvm/rvm/pull/4636)
  * 2.6.3 [\#4668](https://github.com/rvm/rvm/pull/4668)
  * 2.5.5 [\#4640](https://github.com/rvm/rvm/pull/4640)
  * 2.4.6 [\#4657](https://github.com/rvm/rvm/pull/4657)
* Add support for JRuby
  * 9.2.6.0 [\#4614](https://github.com/rvm/rvm/pull/4614)
  * 9.2.7.0 [\#4664](https://github.com/rvm/rvm/pull/4664)
* Add support for Rubinius
  * 3.107 [\#4649](https://github.com/rvm/rvm/pull/4649)
  * 4.0 [\#4688](https://github.com/rvm/rvm/pull/4688)
* Add support for mruby 2.0.1 [\#4667](https://github.com/rvm/rvm/pull/4667)

#### Bug fixes
* Add system ruby as dependency for CentOS [\#4567](https://github.com/rvm/rvm/pull/4567)
* Improve detection of Amazon Linux 2 [\#4568](https://github.com/rvm/rvm/pull/4568)
* Fix macOS openssl requirement gathering with Homebrew [\#4583](https://github.com/rvm/rvm/pull/4583)
* Don't spoil environment with '_system_*' variables [\#4584](https://github.com/rvm/rvm/pull/4584)
* Add missing zlib dependency for macOS [\#4587](https://github.com/rvm/rvm/pull/4587)
* Install libssl1.0-dev for version 1.8 of Ruby on Ubuntu linux [\#4586](https://github.com/rvm/rvm/pull/4586)
* Require os-specific functions during install only when they exist [\#4589](https://github.com/rvm/rvm/pull/4589)
* Fix loading rvm script with set -e [\#4606](https://github.com/rvm/rvm/pull/4606)
* Fix installing Homebrew in a custom location [\#4620](https://github.com/rvm/rvm/pull/4620)
* Update rbx dependencies for macOS [\#4643](https://github.com/rvm/rvm/pull/4643)
* Fix version selected for TruffleRuby binary install [\#4662](https://github.com/rvm/rvm/pull/4662)
* Remove hardcoded number of jobs in installer [\#4674](https://github.com/rvm/rvm/pull/4674)
* Updated obsoleted package openssl-devel to libssl-devel cygwin requirements [\#4685](https://github.com/rvm/rvm/pull/4685)

#### Binaries:
* Ubuntu 18.04 x64 binaries
  * Ruby 2.2.10, 2.3.8, 2.4.5, 2.5.2, 2.5.3, 2.6.0 [\#4595](https://github.com/rvm/rvm/issues/4595)
  * Ruby 2.6.1 [\#4601](https://github.com/rvm/rvm/issues/4601)
  * Ruby 2.5.4, 2.5.5, 2.6.2 [\#4647](https://github.com/rvm/rvm/issues/4647)
  * Ruby 2.4.6 and 2.6.3 [\#4686](https://github.com/rvm/rvm/issues/4686)

## [1.29.7](https://github.com/rvm/rvm/releases/tag/1.29.7)
3 January 2019 - [Full Changelog](https://github.com/rvm/rvm/compare/1.29.6...1.29.7)

#### New features
* Set Ruby 2.6.0 as the default Ruby version [\#4544](https://github.com/rvm/rvm/pull/4544)
* RailsExpress patches for 2.6.0 [\#4547](https://github.com/rvm/rvm/pull/4547)
* Add support for gcc@8 with Homebrew and drop gcc < 4.9 [\#4556](https://github.com/rvm/rvm/issues/4556)

#### New interpreters
* Add support for Ruby 2.6.0-rc2 [\#4526](https://github.com/rvm/rvm/pull/4526) and 2.6.0 [\#4542](https://github.com/rvm/rvm/pull/4542)

#### Bug fixes
* Install libssl1.0.2 for old versions of Ruby on Kali linux [\#4522](https://github.com/rvm/rvm/pull/4522)
* Fix Linux Mint 19 dependencies [\#4524](https://github.com/rvm/rvm/pull/4524)
* Fix Mojave Command Line Tools version detection [\#4404](https://github.com/rvm/rvm/pull/4404)
* Fix return code in signature check function [\#4530](https://github.com/rvm/rvm/issues/4530)
* Check `stable` branch only for latest version [\#4534](https://github.com/rvm/rvm/issues/4534)
* Fix comparison of local and online stable versions [\#4539](https://github.com/rvm/rvm/issues/4539)
* Remove reference to keys.gnupg.net in favour of pool.sks-keyservers.net [\#4550](https://github.com/rvm/rvm/issues/4550)
* Fix Homebrew docs links [\#4551](https://github.com/rvm/rvm/issues/4551)
* Drop invalid link for osx-gcc-installer [\#4552](https://github.com/rvm/rvm/issues/4552)
* Use gcc from XCode for macOS Mojave (10.14) [\#4557](https://github.com/rvm/rvm/issues/4557)
* Stop uninstalling gcc from Homebrew [\#4558](https://github.com/rvm/rvm/issues/4558)

#### Changes
* Drop usage of bit.ly for link shortening [\#4555](https://github.com/rvm/rvm/issues/4555)

## [1.29.6](https://github.com/rvm/rvm/releases/tag/1.29.6)
13 December 2018 - [Full Changelog](https://github.com/rvm/rvm/compare/1.29.5...1.29.6)

#### Bug fixes
* Correct version listed in VERSION file
* Mention pkuczynski gpg key in docs and cli [\#4519](https://github.com/rvm/rvm/pull/4519)
* Remove gcc installed via Homebrew in favour of Command Line Tools on macOS Mojave [\#4501](https://github.com/rvm/rvm/pull/4501)
* Fix Rubinius build on macOS with Homebrew [\#4328](https://github.com/rvm/rvm/pull/4328)

#### Documentation
* Improve gpg signature verification docs [\#4458](https://github.com/rvm/rvm/pull/4458)

## [1.29.5](https://github.com/rvm/rvm/releases/tag/1.29.5)
12 December 2018 - [Full Changelog](https://github.com/rvm/rvm/compare/1.29.4...1.29.5)

#### New features:
* Switch to new maven-based JRuby download URLs
* RailsExpress patches for 2.3.8, 2.4.5 and 2.5.3 [\#4476](https://github.com/rvm/rvm/pull/4476)
* Add support for Void linux [\#4478](https://github.com/rvm/rvm/pull/4478)
* Add support for MINGW in main rvm script [\#4493](https://github.com/rvm/rvm/pull/4493)
* Add support for gcc@7 on macOS with Homebrew [\#4500](https://github.com/rvm/rvm/pull/4500)
* Add support for Trisquel linux [\#4478](https://github.com/rvm/rvm/pull/4478)
* Add fail warning when Avira antivirus running [\#4498](https://github.com/rvm/rvm/pull/4498)

#### Bug fixes:
* Allow HTTP 2.0 servers to be used for downloads
* Remove too restrictive check for LLVM with TruffleRuby [\#4427](https://github.com/rvm/rvm/pull/4427)
* Fix trap restoration on Amazon Linux [\#4428](https://github.com/rvm/rvm/pull/4428)
* Fix Amazon Linux 2 detection [\#4435](https://github.com/rvm/rvm/pull/4435)
* Fix libssl dependency for Elementary 5.0 Juno [\#4448](https://github.com/rvm/rvm/pull/4448)
* Fix Ruby 2.5.0 and 2.5.1 build with LibreSSL 2.7.0 [\#4483](https://github.com/rvm/rvm/pull/4483)
* Fix libssl dependency for Mint 19 [\#4482](https://github.com/rvm/rvm/pull/4482)
* Use --no-ri or --no-document depending on ruby version [\#4492](https://github.com/rvm/rvm/pull/4492)

#### Upgraded Ruby interpreters:
* Add support for TruffleRuby 1.0.0-rc3 [\#4419](https://github.com/rvm/rvm/pull/4419), 1.0.0-rc5 [\#4440](https://github.com/rvm/rvm/pull/4440), 1.0.0-rc6 [\#4452](https://github.com/rvm/rvm/pull/4452), 1.0.0-rc7 [\#4466](https://github.com/rvm/rvm/pull/4466), 1.0.0-rc8 [\#4489](https://github.com/rvm/rvm/pull/4489), 1.0.0-rc9 [\#4489](https://github.com/rvm/rvm/pull/4489), and 1.0.0-rc10 [\#4512](https://github.com/rvm/rvm/pull/4512)
* Add support for Ruby 2.3.8, 2.4.5, 2.5.2, 2.5.3 [\#4474](https://github.com/rvm/rvm/pull/4474), 2.6.0-preview3 [\#4490](https://github.com/rvm/rvm/pull/4490), and 2.6.0-rc1 [\#4513](https://github.com/rvm/rvm/pull/4513)
* Add support for JRuby 9.2.1.0 [\#4491](https://github.com/rvm/rvm/pull/4491), 9.2.2.0 [\#4495](https://github.com/rvm/rvm/pull/4495), 9.2.3.0 [\#4496](https://github.com/rvm/rvm/pull/4496), 9.2.4.0 [\#4504](https://github.com/rvm/rvm/pull/4504), 9.2.4.1 [\#4509](https://github.com/rvm/rvm/pull/4509), and 9.2.5.0 [\#4514](https://github.com/rvm/rvm/pull/4514)
* Add support for mruby 1.4.1 [\4517](https://github.com/rvm/rvm/pull/4517) and 2.0.0 [\4516](https://github.com/rvm/rvm/pull/4516)

#### Binaries:
* Ubuntu 18.04 x64 binaries for Ruby 2.3.7, 2.4.4 and 2.5.1 [\#4438](https://github.com/rvm/rvm/issues/4438)

## [1.29.4](https://github.com/rvm/rvm/releases/tag/1.29.4)
1 July 2018 - [Full Changelog](https://github.com/rvm/rvm/compare/1.29.3...1.29.4)

#### New features:
* Multi-colored log, warning and error messages [\#4044](https://github.com/rvm/rvm/pull/4044)
* RailsExpress patches for 2.2.8, 2.3.5 and 2.4.2 [\#4167](https://github.com/rvm/rvm/pull/4167)
* Improved CPU count detection [\#4171](https://github.com/rvm/rvm/pull/4171)
* Simplified wrapper subcommand [\#4180](https://github.com/rvm/rvm/issues/4180)
* Extend aliases to gems directories [\#4189](https://github.com/rvm/rvm/pull/4189)
* Debian Buster (10) support [\#4199](https://github.com/rvm/rvm/pull/4199)
* Implement DNF package manager for Fedora 22+ [\#4198](https://github.com/rvm/rvm/pull/4198)
* `float_warnings` patches for Ruby 2.0.0p64[5 7 8], 2.1.[8 9 10], 2.2.[4 5 6 7 8], 2.3.[0 1 2 3 4 5] and 2.4.[0 1 2] [\#4201](https://github.com/rvm/rvm/pull/4201)
* RailsExpress patches for ruby-head, 2.2.9, 2.3.6 and 2.4.3 [\#4264](https://github.com/rvm/rvm/pull/4264)
* RailsExpress patches for 2.5.0 [\#4268](https://github.com/rvm/rvm/pull/4268)
* Update README including Table of Contents to help improve documentation readability [\#4277](https://github.com/rvm/rvm/pull/4277)
* Set default RubyGems to 2.7 [\#4276](https://github.com/rvm/rvm/issues/4276)
* Add support for installing Ruby <2.4 on Ubuntu 17.10+ [\#4326](https://github.com/rvm/rvm/pull/4326)
* Add support for installing Rubinius on Redhat/Fedora [\#4329](https://github.com/rvm/rvm/pull/4329)
* Installing Rubinius on Ubuntu 17.x [\#4213](https://github.com/rvm/rvm/pull/4213)
* RailsExpress patches for 2.2.10, 2.3.7, 2.4.4 and 2.5.1 [\#4344](https://github.com/rvm/rvm/pull/4344)
* Add documentation in `rvm help install` for multiple undocumented flags [\#4350](https://github.com/rvm/rvm/pull/4350)
* Add support for TruffleRuby [\#4406](https://github.com/rvm/rvm/pull/4406)
* Add support for `--tag` in `rvm install` [\#4360](https://github.com/rvm/rvm/pull/4360)
* Add bundler to list of default gems [\#4413](https://github.com/rvm/rvm/pull/4413)

#### Bug fixes:
* ZSH Bad pattern for Gemfile ruby declaration [\#4154](https://github.com/rvm/rvm/issues/4154) [\#4156](https://github.com/rvm/rvm/issues/4156)
* Add missing `random.c` patch for Ruby 2.3.2 [\#4165](https://github.com/rvm/rvm/issues/4165)
* Set back IRB history default to HOME [\#4158](https://github.com/rvm/rvm/issues/4158)
* Do not require `libyaml-devel` on Redhat/Centos when it's not needed [\#2998](https://github.com/rvm/rvm/issues/2998)
* Restore mvn installation for JRuby 1.7 [\#4166](https://github.com/rvm/rvm/issues/4166)
* ree-1.8.7 requires old version of OpenSSL 1.0.2 [\#4110](https://github.com/rvm/rvm/issues/4110)
* `libreadline6-dev` is not a valid Ubuntu 16.10 package [\#4172](https://github.com/rvm/rvm/issues/4172)
* Require libdb-4.8 for OpenSuSE Tumbleweed [\#4178](https://github.com/rvm/rvm/issues/4178)
* Require make for JRuby 9 [\#4058](https://github.com/rvm/rvm/issues/4058)
* Fix support for zsh 5.4.1 [bash_zsh_support \#6](https://github.com/mpapis/bash_zsh_support/pull/6)
* Installing rbx-3.70 fails on PCLinuxOS 64-bit [\#3895](https://github.com/rvm/rvm/issues/3895)
* Can't install Ruby with MacPorts and LibreSSL [\#4208](https://github.com/rvm/rvm/issues/4208)
* Fix invalid `libgmp3-dev` requirement for Debian [\#4238](https://github.com/rvm/rvm/pull/4238)
* Ensure compat-openssl10-devel is not installed for Fedora 26+ and Ruby 2.4+ [\#4249](https://github.com/rvm/rvm/pull/4249)
* Fix fd_mask detection on OS X for Ruby 2.5.0 [\#4270](https://github.com/rvm/rvm/pull/4270)
* Suppress `ls` alias substitution in `gem_install_force` in `scripts/functions/gemset` [\#4282](https://github.com/rvm/rvm/issues/4282)
* Fix installing rubygems 2.7 [\#4287](https://github.com/rvm/rvm/pull/4287)
* Add prelude_gcc_diagnostic patch for Ruby 2.5.0 to correct compilation failures with GCC < 5
* Fix installing rubygems master [\#3734](https://github.com/rvm/rvm/issues/3734)
* Correctly look for rvm group in /etc/group [\#4300](https://github.com/rvm/rvm/issues/4300)
* Drop homebrew/versions and upgrade gcc to 6.0 [\#4304](https://github.com/rvm/rvm/pull/4304)
* Avoid unnecessary install warning [\#4346](https://github.com/rvm/rvm/pull/4346)
* Unified putput of installation notes [\#4330](https://github.com/rvm/rvm/pull/4330)
* Skip gemset pristine on mruby reinstall [\#4348](https://github.com/rvm/rvm/pull/4348)
* Ruby 2.2.5 to 2.2.10 patches for installing bundled gems [\#4358](https://github.com/rvm/rvm/issues/4358)
* Update RBX dependencies for OpenSUSE [\#4382](https://github.com/rvm/rvm/pull/4382)
* Fix nailgun detection on JRuby 9+ [\#4089](https://github.com/rvm/rvm/issues/4089)
* RVM removes traps in bash [\#4416](https://github.com/rvm/rvm/issues/4416)

#### Upgraded Ruby interpreters:
* Add support for Ruby 2.2.8, 2.3.5 and 2.4.2 [\#4159](https://github.com/rvm/rvm/pull/4159), 2.5.0-preview1 [\#4204](https://github.com/rvm/rvm/pull/4204), 2.2.9, 2.3.6, 2.4.3 and 2.5.0-rc1 [\#4261](https://github.com/rvm/rvm/pull/4261), 2.5.0 [\#4265](https://github.com/rvm/rvm/pull/4265), 2.6.0-preview1 [\#4317](https://github.com/rvm/rvm/pull/4317), 2.2.10, 2.3.7, 2.4.4, 2.5.1 [\#4340](https://github.com/rvm/rvm/pull/4340) and 2.6.0-preview2[\#4395](https://github.com/rvm/rvm/pull/4395)
* Add support for Rubinius 3.85-3.100
* Add support for JRuby 9.1.14.0 [\#4224](https://github.com/rvm/rvm/pull/4224), 9.1.15.0 [\#4258](https://github.com/rvm/rvm/pull/4258), 9.1.16.0 [\#4316](https://github.com/rvm/rvm/pull/4316), 9.1.17.0 [\#4366](https://github.com/rvm/rvm/pull/4366), 9.2.0.0 [\#4390](https://github.com/rvm/rvm/pull/4390)
* Add support for mruby 1.4.0 [\#4286](https://github.com/rvm/rvm/pull/4286)
* Add support for MagLev 1.1* and 1.2Alpha-1.2Alpha4 [\#4289](https://github.com/rvm/rvm/pull/4289)
* Add support for RubyGems 2.6.14 [\#4205](https://github.com/rvm/rvm/pull/4205), 2.7.0-2.7.4 [\#4276](https://github.com/rvm/rvm/issues/4276) and 2.7.5-6

#### Binaries:
* Ubuntu 16.04 x64 binaries for Ruby 2.2.10, 2.3.7, 2.4.4 and 2.5.1 [\#4362](https://github.com/rvm/rvm/issues/4362), 2.2.9, 2.3.6 and 2.4.3 [\#4259](https://github.com/rvm/rvm/issues/4259), 2.2.8, 2.3.5 and 2.4.2 [\#4161](https://github.com/rvm/rvm/issues/4161), 2.5.0 [\#4272](https://github.com/rvm/rvm/pull/4272)
* Ubuntu 17.04 for Ruby 2.1.\*, 2.2.\* [\#4233](https://github.com/rvm/rvm/pull/4233)


## [1.29.3](https://github.com/rvm/rvm/releases/tag/1.29.3)
10 September 2017 - [Full Changelog](https://github.com/rvm/rvm/compare/1.29.2...1.29.3)

#### New features:
* Add RVM commands missing in bash shell completion [\#4078](https://github.com/rvm/rvm/pull/4078)
* Railsexpress patches for 2.3.4, 2.3-head [\#4084](https://github.com/rvm/rvm/pull/4084), 2.2.5 and 2.2.6 [\#4153](https://github.com/rvm/rvm/pull/4153)
* Update `gem-wrappers` to 1.3.0: Show warnings when the target binary is missing or is not executable [gem-wrappers \#9](https://github.com/rvm/gem-wrappers/issues/9)
* Detect Zorin OS as Ubuntu [\#4140](https://github.com/rvm/rvm/issues/4140)

#### Bug fixes:
* Infinite loop in `gemset_create` [\#4102](https://github.com/rvm/rvm/issues/4102)
* Command not found `__rvm_remote_version` error [\#4085](https://github.com/rvm/rvm/pull/4085)
* Fix path of version script in `environment` [\#4117](https://github.com/rvm/rvm/pull/4117)
* Define `cd()`, `pushd()` and `popd()` properly when using zsh [\#4132](https://github.com/rvm/rvm/pull/4132)
* Update gem-wrappers to 1.3.1: Avoid warnings for missing ruby binaries [\#4104](https://github.com/rvm/rvm/issues/4104)
* Handles :engine=> and :engine_version=> in Gemfile
* Makes $rvm_ruby_string is not installed searchable by adding a fixed keyword
* Correctly quotes suggested install command
* Fix path to version script in rvm-installer [\#4134](https://github.com/rvm/rvm/pull/4134)
* Fix rvm autolibs status, fix [\#4123](https://github.com/rvm/rvm/issues/4123)
* Ruby 2.3.x and older are not compatible with OpenSSL 1.1.x on Arch [\#4006](https://github.com/rvm/rvm/issues/4006)
* Allow comments after ruby directive in Gemfile [\#4056](https://github.com/rvm/rvm/issues/4056)
* Ruby 2.3/4 compilation fix for GCC 7 [\#4080](https://github.com/rvm/rvm/issues/4080) [\#4115](https://github.com/rvm/rvm/issues/4115)
* Add warning for sudo users [\#4009](https://github.com/rvm/rvm/issues/4009)
* Allows running RVM shell function in Bash with `set -o nounset` [\#4013](https://github.com/rvm/rvm/issues/4013)
* Ensure `rvm_hooks_path` is set [\#3902](https://github.com/rvm/rvm/issues/3902)
* Allow building static ruby with `--disbale-shared` [\#4091](https://github.com/rvm/rvm/issues/4091)
* Restore detection of `gpg` command for veryfication of signatures [\#4059](https://github.com/rvm/rvm/issues/4059)
* Update `gem-wrappers` to 1.3.2: Avoid nested chdir warnings [gem-wrappers \#11](https://github.com/rvm/gem-wrappers/pull/11)
* Fix RVM folder cleanup during installation [\#4333](https://github.com/rvm/rvm/issues/4333)
* Fix found project file reject reasons for bash -e [\#4314](https://github.com/rvm/rvm/pull/4314)

#### Upgraded Ruby interpreters:
* Add support for Rubinius 3.82, 3.83, 3.84
* Add support for mruby 1.3.0
* Upgrade RubyGems to 2.6.13 [\#4142](https://github.com/rvm/rvm/pull/4142)
* Add support for JRuby 9.1.13.0 [\#4147](https://github.com/rvm/rvm/pull/4147)

#### Documentation
* Remove `wayneeseguin` reference from RVM repo names [\#4086](https://github.com/rvm/rvm/pull/4086)

## [1.29.2](https://github.com/rvm/rvm/releases/tag/1.29.2)

#### New features:
* Add support for elementary OS [\#3935](https://github.com/rvm/rvm/issues/3935)
* Add support for Deepin (based on Debian) [\#3999](https://github.com/rvm/rvm/issues/3999)
* Simplified OS detection mechanism [\#3938](https://github.com/rvm/rvm/pull/3938)
* Use fuzzy version match for `rvm remove` [\#4028](https://github.com/rvm/rvm/pull/4028)
* Simplify and cleanup of `rvm help` output [\#4029](https://github.com/rvm/rvm/pull/4029)
* Add support for Kali Linux (based on Debian) [\#3958](https://github.com/rvm/rvm/issues/3958)
* Railsexpress patches for 2.4.0, 2.4.1 and 2.4-head [\#4050](https://github.com/rvm/rvm/pull/4050)

#### Bug fixes:
* Use actual executable test instead of mount|grep noexec for robust noexec detection [\#3933](https://github.com/rvm/rvm/pull/3933)
* "Unknown ruby string (do not know how to handle)" when specifying Ruby version w/a gemset [\#3292](https://github.com/rvm/rvm/issue/3292)
* Fix the required openssl version for ruby 1.8 on OSX [\#3955](https://github.com/rvm/rvm/issue/3955)
* Detect `.` as an alternative to `source` in bash profile warning [\#3960](https://github.com/rvm/rvm/issues/3960)
* Allow users to specify irb history file using IRB.conf[:HISTORY_FILE] [\#3969](https://github.com/rvm/rvm/pull/3969)
* Prefer github issues over IRC support [\#3939](https://github.com/rvm/rvm/issues/3939)
*	Architecture detection using uname instead of dpkg [\#3948](https://github.com/rvm/rvm/issues/3948)
* Help section of the rvm.io page points to irc.freenode.net instead of github [\#3939](https://github.com/rvm/rvm/issues/3939)
* Make sure stderr output is printed on console and not captured into log files [\#3990](https://github.com/rvm/rvm/issues/3990)
* Clean up errors output, show only log file name [\#3990](https://github.com/rvm/rvm/issues/3990)
* RVM install fail on macOS Yosemite due expired curl's SSL certificate [\#3886](https://github.com/rvm/rvm/issues/3886)
* Fix failing openssl.patch for Ruby 2.2.4 and 2.2.5 [\#3988](https://github.com/rvm/rvm/issues/3988)
* Do not unset rvm_pretty_print_flag [\#3946](https://github.com/rvm/rvm/issues/3946)
* Patch Ruby 2.3.4 with missing rb_thread_fd_close [\#4008](https://github.com/rvm/rvm/issues/4008)
* Unknown subcommand `rvm gemset clear` [\#4004](https://github.com/rvm/rvm/issues/4004)
* Skip rubygems install for ruby-head [\#4022](https://github.com/rvm/rvm/pull/4022)
* Fix match MacPorts in non standard location [\#4051](https://github.com/rvm/rvm/pull/4051)
* Ruby 2.3.3 doesn't compile on Debian 8.3 [\#4000](https://github.com/rvm/rvm/issues/4000)
* Ruby < 2.4 fail to build on Fedora 26 [\#4057](https://github.com/rvm/rvm/issues/4057)

#### Upgraded Ruby interpreters:
* Add support for Rubinius 3.72 [\#3934](https://github.com/rvm/rvm/pull/3934), 3.73 [\#3979](https://github.com/rvm/rvm/pull/3979), 3.74 [\#3994](https://github.com/rvm/rvm/pull/3994), 3.75 [\#4002](https://github.com/rvm/rvm/pull/4002), 3.76 and 3.77 [\#4016](https://github.com/rvm/rvm/pull/4016), 3.78, 3.79, 3.80, 3.81
* Add support for Ruby 2.2.7 [\#3970](https://github.com/rvm/rvm/pull/3970), 2.3.4 [\#3973](https://github.com/rvm/rvm/pull/3973) and 2.4.1 [\#3963](https://github.com/rvm/rvm/pull/3963)
* Upgrade RubyGems to 2.6.12 [\#4018](https://github.com/rvm/rvm/pull/4018)
* Add support for JRuby 1.7.27 [\#4026](https://github.com/rvm/rvm/pull/4026), 9.1.8.0 [\#3952](https://github.com/rvm/rvm/pull/3952), 9.1.9.0 [\#4036](https://github.com/rvm/rvm/pull/4036), 9.1.10.0 [\#4049](https://github.com/rvm/rvm/pull/4049), 9.1.11 [\#4064](https://github.com/rvm/rvm/issues/4064) and 9.1.12.0 [\#4066](https://github.com/rvm/rvm/issues/4066)

#### Binaries:
* Ubuntu x64 binary for Ruby 2.4.1 [\#3965](https://github.com/rvm/rvm/issues/3965)
* Ubuntu x64 binary for Ruby 2.2.7 [\#3971](https://github.com/rvm/rvm/issues/3971)
* Ubuntu x64 binary for Ruby 2.3.4 [\#3985](https://github.com/rvm/rvm/issues/3985)
* Ubuntu 16.10 x64 binaries for Ruby 1.9.3-p551, 2.0.0-p648, 2.1.5, 2.1.6, 2.1.8, 2.1.9, 2.2.4, 2.2.5, 2.2.6, 2.3.0, 2.3.1, 2.3.2 and 2.3.3 [\#3823](https://github.com/rvm/rvm/issues/3823)

#### Documentation:
* Integrating RVM with Bash on Ubuntu on Windows 10 [\#304](https://github.com/rvm/rvm-site/pull/304)
* Troubleshooting SSL certificate problem: unable to get local issuer certificate [\#3984](https://github.com/rvm/rvm/issue/3984)
* Automatically generated Integration section on Index page [\#305](https://github.com/rvm/rvm-site/pull/305)
* Add info about Ubuntu installation package [\#306](https://github.com/rvm/rvm-site/pull/306)
* Remove subversion as a prerequisite for installing rubies [\#277](https://github.com/rvm/rvm-site/issue/277)
* Added missing information that user should have sudo rights to install rubies [\#307](https://github.com/rvm/rvm-site/pull/307)
* Better explanation for `apt-get update` failing with 404 Not Found errors [\#3411](https://github.com/rvm/rvm/issue/3411)
* Ruby 2.1 is no more maintained [\#3997](https://github.com/rvm/rvm/pull/3997)
* Display deprecation notice for `rvm usage` [\#4047](https://github.com/rvm/rvm/pull/4047)

## [1.29.1](https://github.com/rvm/rvm/releases/tag/1.29.1)

19 February 2017 - [Full Changelog](https://github.com/rvm/rvm/compare/1.29.0...1.29.1)

#### Bug fixes:
* Fix using ruby from current dir when no params [\#3880](https://github.com/rvm/rvm/issues/3880)
* Fix Ruby/Openssl installation on OSX [\#3923](https://github.com/rvm/rvm/issues/3923)
* Fix rvm info to be yaml compatible [\#3924](https://github.com/rvm/rvm/issues/3924)
* Add explicit architecture check for debian/ubuntu [\#3927](https://github.com/rvm/rvm/issues/3927)
* Fix detecting openssl path for ruby24 [\#3928](https://github.com/rvm/rvm/issues/3928)


## [1.29.0](https://github.com/rvm/rvm/releases/tag/1.29.0)

12 February 2017 - [Full Changelog](https://github.com/rvm/rvm/compare/1.28.0...1.29.0)

#### Security fixes:
* add trusting working directory hooks
* add trusting project files with environment variables
* prevent executing code when loading variables from project files
* remove posibility to install gems from .versions.conf
* do not 'bundle install' if no rvm_autoinstall_bundler_flag=1
* install bundler only from remote server
* handle spaces in working directory hook names
* avoid double escaping of envirtonment variables
* avoid extra quotation if it was used in the project file

#### New features:
* Added railsexpress patches for Ruby 2.3.3 [\#3852](https://github.com/rvm/rvm/pull/3852)
* Add support for KDE neon [\#3828](https://github.com/rvm/rvm/pull/3828)
* Allow to remove undesired libraries breaking the ruby build [\#3851](https://github.com/rvm/rvm/issues/3851)
* Mention in PATH warnings about ability to silence them [\#3336](https://github.com/rvm/rvm/issues/3336)
* Expose `autolibs` setting in `rvm info` output [\#3892](https://github.com/rvm/rvm/pull/3892)
* Detect `noexec` mount mode for partition hosting RVM home [\#3832](https://github.com/rvm/rvm/pull/3832)

#### Bug fixes:
* Changed `eval` to `source` for fish 2.5.0 compatibility [fish-shell\#3809](https://github.com/fish-shell/fish-shell/issues/3809)
* $PATH become empty after __rvm_unload executed [\#3847](https://github.com/rvm/rvm/pull/3847)
* RVM incorrectly tries to install llvm 3.5 when trying to install Rubinius 3 [\#3848](https://github.com/rvm/rvm/pull/3848)
* Missing libyaml-devel on PCLinuxOS 64-bit [\#3703](https://github.com/rvm/rvm/issues/3703)
* Failing openssl.patch for Ruby 1.9.3 [\#3831](https://github.com/rvm/rvm/issues/3831)
* RVM hardcodes number of compile threads [\#3856](https://github.com/rvm/rvm/pull/3856)
* Cannot build rbx-2.5.2 on ArchLinux [\#3497](https://github.com/rvm/rvm/issues/3497)
* Remove incompatible version of openssl098 [\#3844](https://github.com/rvm/rvm/issues/3844)
* Failed to fetch the gpg key from keys.gnupg.net [\#3544](https://github.com/rvm/rvm/issues/3544)
* Filtering Travis binaries for OSX for non Travis env (they are statically linked and not movable) [\#3690](https://github.com/rvm/rvm/issues/3690)
* Remove kernel-libc-devel dependency on Solus [\#3881](https://github.com/rvm/rvm/pull/3881)
* Speed up loading rubies - gem version compatibility check
* Missing cygwin32-readline package on Windows [\#3812](https://github.com/rvm/rvm/pull/3812)
* Installation of rbx-3.69 on macOS fails because llvm35 formula can't be found [\#3884](https://github.com/rvm/rvm/issues/3884)
* Ruby 2.3.x and older are not compatible with OpenSSL 1.1.x on Debian [\#3862](https://github.com/rvm/rvm/issues/3862)
* OpenSSL vs libressl conflict installing ruby-2.4.0 on openSUSE Tumbleweed [\#3906](https://github.com/rvm/rvm/issues/3906)
* Missing `libgmp3-dev` for Ruby 2.2 on Debian 6 [\#3675](https://github.com/rvm/rvm/issues/3675)
* JRuby on Arch is missing Java requirements [\#3539](https://github.com/rvm/rvm/issues/3539)
* `rvm install 2.4` installs 2.4.0-rc1 instead of 2.4.0 [\#3866](https://github.com/rvm/rvm/issues/3866)
* Use `libreadline-dev` instead of `libreadline6-dev` on Debian (???stretch) [\#3824](https://github.com/rvm/rvm/issues/3824)
* Warning: openssl is a keg-only and another version is linked to opt [\#3724](https://github.com/rvm/rvm/issues/3724)
* Fix trusting paths with duplicated //
* Fix rvm do in relative paths

#### Upgraded Ruby interpreters:
* Add support for Ruby 2.4.0 [\#3849](https://github.com/rvm/rvm/pull/3849)
* Add support for JRuby 9.1.7.0 [\#3878](https://github.com/rvm/rvm/pull/3878)
* Add support for Rubinius 3.70 [\#3889](https://github.com/rvm/rvm/pull/3889) and 3.71
* Upgrade RubyGems to 2.6.10

#### Binaries:
* Ubuntu x64 binary for Ruby 2.4.0 [\#3867](https://github.com/rvm/rvm/issues/3867)

## [1.28.0](https://github.com/rvm/rvm/releases/tag/1.28.0)

19 December 2016 - [Full Changelog](https://github.com/rvm/rvm/compare/1.27.0...1.28.0)

#### New features:
* Feedback when switching gemset with/without use [\#3780](https://github.com/rvm/rvm/issues/3780)
* Require OpenJDK 1.8.0 (with fallback to 1.7.0) for JRuby on CentOS/Fedora [\#3741](https://github.com/rvm/rvm/pull/3741) and Ubuntu [\#3719](https://github.com/rvm/rvm/pull/3719)
* Updated README including information about dedicated Ubuntu package
* Add support for Solus linux [\#3728](https://github.com/rvm/rvm/pull/3728)

#### Bug fixes:
* Can't download rvm; curl returned status '23' [\#3785](https://github.com/rvm/rvm/issues/3785)
* Installation fails when cygwin was installed with `--no-admin` flag [\#3762](https://github.com/rvm/rvm/issues/3762)
* Installation fails with `SSLv3_method undeclared` [\#3752](https://github.com/rvm/rvm/issues/3752)
* Updated source urls for Ruby Enterprise Edition [\#3740](https://github.com/rvm/rvm/issues/3740)
* RVM install rbx fails on 10.11.6 with `llvm` version mismatch [\#3722](https://github.com/rvm/rvm/issues/3722)
* Can't install jruby on Ubuntu 16.04: no `openjdk-7-jre-headless` package [\#3719](https://github.com/rvm/rvm/issues/3719)
* Fail to install ruby 2.3.1 on Windows 10 with Cygwin (missing `libcrypt-devel` and `libcrypt0`) [\#3706](https://github.com/rvm/rvm/issues/3706)
* Incorrect requirement `cygwin32-readline` for Cygwin x86_64 [\#2736](https://github.com/rvm/rvm/issues/2736)
* Fish shell error after stable update [\#3655](https://github.com/rvm/rvm/issues/3655)
* Enforce usage of gpg coming from Cygwin on Windows [\#3623](https://github.com/rvm/rvm/issues/3623)
* Change Rubinius dependency llvm to version 3.5 for OpenSuse, macOS and Ubuntu [\#3287](https://github.com/rvm/rvm/issues/3287)
* Print info message when auto switching ruby by entering the folder [\#3602](https://github.com/rvm/rvm/issues/3602)
* Change Rubinius Ubuntu dependency clang to version 3.5 [\#3541](https://github.com/rvm/rvm/issues/3541)
* Patch Ruby to explicitly refer to kernel32.dll on Cygwin [\#3519](https://github.com/rvm/rvm/issues/3519)
* Add libgmp-dev as an Ubuntu requirement [\#3509](https://github.com/rvm/rvm/issues/3509)
* Errors when installing rubies caused by old ruby gems 2.4.x shipped with RVM [\#3742](https://github.com/rvm/rvm/issues/3742)
* Cannot load such file -- zlib [\#3389](https://github.com/rvm/rvm/issues/3389)
* Improved warning message for when PATH= is set without $PATH [\#3776](https://github.com/rvm/rvm/pull/3776)
* Fix error message about ignoring all Gemfiles [\#3771](https://github.com/rvm/rvm/pull/3771)
* Added rails express patches for 2.2.5 and 2.3.1 [\#3676](https://github.com/rvm/rvm/pull/3676)
* Change OpenBSD mirror protocol from ftp to http [\#3673](https://github.com/rvm/rvm/pull/3673)
* Enable building of Ruby 1.9.3 and 2.0.0 on 64bit little-endian PowerPC [\#3666](https://github.com/rvm/rvm/pull/3666)
* Avoid infinite loop on a new tmux session [\#3653](https://github.com/rvm/rvm/pull/3653)

#### Upgraded Ruby interpreters:
* Add support for JRuby 9.1.6.0 [\#3805](https://github.com/rvm/rvm/issues/3805)
* Add support for Ruby 2.2.6, 2.3.2 [\#3808](https://github.com/rvm/rvm/issues/3808), 2.3.3 [\#3819](https://github.com/rvm/rvm/issues/3819), 2.4.0-preview3 and 2.4.0-rc1
* Add support for Rubinius 3.69
* Drop support for GoRuby [\#3786](https://github.com/rvm/rvm/issues/3786)
* Upgrade RubyGems to 2.6.8

#### Binaries:
* Ruby 2.3.0, 2.3.1 [\#3774](https://github.com/rvm/rvm/issues/3774), 2.3.3 [\#3822](https://github.com/rvm/rvm/issues/3822) binaries for Debian 8 x86_64
* Ruby 2.0.0-p648, 2.1.5, 2.1.9, 2.2.5, 2.3.0 [\#3693](https://github.com/rvm/rvm/issues/3693), 2.2.6 and 2.3.2 [\#3809](https://github.com/rvm/rvm/issues/3809), 2.3.3 [\#3820](https://github.com/rvm/rvm/issues/3820) binaries for Ubuntu 16.04
* Ruby 2.3.1 for Centos 6.6 [\#3712](https://github.com/rvm/rvm/issues/3712)
* Install CentOS binaries on both RedHat and CentOS machines [\#3735](https://github.com/rvm/rvm/issues/3735)


## Previous versions

* [1.7.3 - 1.27](https://github.com/rvm/rvm/compare/1.7.2...1.27.0) (_25 August 2011 - 26 March 2016_)
* [0.0.6](https://github.com/rvm/rvm/blob/939585d8563cad4225fa44e8e78b9173467e8440/CHANGELOG.md#006) - [1.7.2](https://github.com/rvm/rvm/blob/939585d8563cad4225fa44e8e78b9173467e8440/CHANGELOG.md#172-17-august-2011) (_17 August 2011_)
