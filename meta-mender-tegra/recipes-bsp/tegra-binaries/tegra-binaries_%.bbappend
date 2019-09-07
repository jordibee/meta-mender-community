FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://flash_l4t_t186.custom.xml"
SRC_URI += "file://flash_t194_sdmmc.custom.xml"
PART_FILE = "${@'flash_l4t_t186.custom.xml' if d.getVar('SOC_FAMILY') == 'tegra186' else 'flash_t194_sdmmc.custom.xml'}"

do_preconfigure_append() {
    cp ${WORKDIR}/${PART_FILE} ${S}/
}

