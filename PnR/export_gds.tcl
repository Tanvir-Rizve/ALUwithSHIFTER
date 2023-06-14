# Write Netlist
saveNetlist [dbGet [dbgTopCell].name].lvs_netlist.vg \
    -flat \
    -includePowerGround \
    -phys \
    -excludeLeafCell

# Write GDS
streamOut TOP.merged.gds -mapFile /home/cad/VLSI2Lab/Digital/PnR/editted.map -mode ALL -units 2000 -merge /home/cad/VLSI2Lab/Digital/library/gsclib045.gds -dieAreaAsBoundary -stripes 1 -structureName TOP -libName DesignLib
