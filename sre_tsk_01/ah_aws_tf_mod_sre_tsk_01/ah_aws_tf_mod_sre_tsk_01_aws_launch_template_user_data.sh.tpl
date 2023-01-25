#!/usr/bin/env bash

# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

set \
  -o \
    "errexit" \
  -o \
    "xtrace"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

exec > >(tee /var/log/user-data.log | logger -t user-data -s 2> /dev/console) 2>&1

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/sudo \
  /usr/bin/apt-get \
    update

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/sudo \
  /usr/bin/apt-get \
    install \
      --no-install-recommends \
      --yes \
        "byobu" \
        "git" \
        "gnupg" \
        "htop" \
        "nginx" \
        "tmux"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/sudo \
  /usr/bin/mkdir \
    --parents \
      "/etc/apt/keyrings"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/curl \
  --fail \
  --location \
  --show-error \
  --silent \
    "https://download.docker.com/linux/debian/gpg" \
      | \
        /usr/bin/sudo \
          /usr/bin/gpg \
            --dearmor \
            --output \
              "/etc/apt/keyrings/docker.gpg"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian buster stable" \
    | \
      /usr/bin/sudo \
        /usr/bin/tee \
          "/etc/apt/sources.list.d/docker.list"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/sudo \
  /usr/bin/apt-get \
    update

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/sudo \
  /usr/bin/apt-get \
    install \
      --no-install-recommends \
      --yes \
        "docker-ce" \
        "docker-ce-cli" \
        "docker-compose-plugin"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/sudo \
  systemctl \
    enable \
      "docker"

/usr/bin/sudo \
  systemctl \
    start \
      "docker"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/sudo \
  /usr/sbin/usermod \
    --append \
    --groups \
      "docker" \
    "admin"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/sudo \
  systemctl \
    stop \
      "nginx"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/sudo \
  systemctl \
    disable \
      "nginx"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/sudo \
  /usr/bin/mkdir \
    --parents \
      "/etc/sky_sre"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/sudo \
  /usr/bin/chmod \
    "755" \
    "/etc/sky_sre"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/git \
  clone \
  --jobs \
    "$(\
    grep \
    "processor.*:" \
    /proc/cpuinfo | \
      wc \
        --lines)" \
  "https://github.com/adamhorden/sky_sre.git" \
  "/etc/sky_sre" \

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/usr/bin/mkdir \
  /etc/sky_sre/sre_tsk_02/sre_tsk_02_dkr_sec

/usr/bin/touch \
  /etc/sky_sre/sre_tsk_02/sre_tsk_02_dkr_sec/sre_tsk_02_dkr_001_influxdb_tkn.sec

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

/etc/sky_sre/sre_tsk_02/sre_tsk_02_dkr_001.sh
