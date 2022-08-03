# Name of distribution.
DISTRO_NAME="Centos"

# Optional comment for distribution.
DISTRO_COMMENT="Centos 7 Distro"

# How much path components should be stripped when extracting rootfs tarball.
# The default is "1" which means to omit the root component.
TARBALL_STRIP_OPT=1

# TARBALL_URL is a Bash associative array containing rootfs URLs for specified
# CPU architectures. You must specify at least one.
TARBALL_URL['arm']="https://us.lxd.images.canonical.com/images/centos/7/armhf/default/20220802_07:09/rootfs.tar.xz"
TARBALL_URL['arm64']="https://us.lxd.images.canonical.com/images/centos/7/arm64/default/20220802_07:08/"

# SHA-256 checksum for the given tarball. You must specify checksum for each
# defined tarball.
TARBALL_SHA256['arm']="563d2f1975146114f6ec34930ca2fd4e0c2e7f085102c41ee55ed6ef07eb4692"
TARBALL_SHA256['arm64']="3ca78d5a0dffa0858da00bb04a25b9f781992a9ab1fe1ddf58495b76d7a0a785"

# This function defines any additional steps that should be executed during
# installation. You can use "run_proot_cmd" to execute a given command in
# proot environment.
distro_setup() {
	run_proot_cmd yum update -y
}
