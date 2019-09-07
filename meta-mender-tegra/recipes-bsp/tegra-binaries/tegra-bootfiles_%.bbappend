PART_FILE = "${@'flash_l4t_t186.custom.xml' if d.getVar('SOC_FAMILY') == 'tegra186' else 'flash_t194_sdmmc.custom.xml'}"
PARTITION_FILE = "${S}/${PART_FILE}"
