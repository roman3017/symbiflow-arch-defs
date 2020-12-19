# Arty Board
#

add_file_target(FILE NexysA7.xdc)
add_file_target(FILE NexysA7SmpLinux.v)
add_file_target(FILE RamXilinx.v)

add_fpga_target(
  NAME saxon_nexysa7
  BOARD arty100t-full
  TOP NexysA7SmpLinux
  SOURCES NexysA7SmpLinux.v RamXilinx.v
  INPUT_XDC_FILE NexysA7.xdc
  EXPLICIT_ADD_FILE_TARGET
  INSTALL_CIRCUIT
)

