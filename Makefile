PROJECT = emqttd_recon
PROJECT_DESCRIPTION = emqttd recon plugin
PROJECT_VERSION = 2.0

DEPS = gen_conf recon emqttd

dep_gen_conf = git https://github.com/emqtt/gen_conf master
dep_recon    = git https://github.com/ferd/recon 2.2.1
dep_emqttd   = git https://github.com/emqtt/emqttd emq20

CT_SUITES = emqttd_recon
CT_OPTS = -erl_args -config test/config/sys.config

COVER = true

include erlang.mk

app:: rebar.config