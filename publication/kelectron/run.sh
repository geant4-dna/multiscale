MULTISCALE_DIR="/home/lampe/gits/geant4sims/multiscale"
$MULTISCALE_DIR/macro/build/macro -m "kelectron.mac" -t 16
hadd -f kelectronmacro.root macro*root
rm macro*root
#cp $MULTISCALE_DIR/macro/build/macroanalysis.C ./
#root -b -q -l 'macroanalysis.C("kelectronmacro.root")'
#rm macroanalysis.C
#mv kelectronmacro.root.secondaryhisto secondaries.hist


$MULTISCALE_DIR/micro/build/micro -m "ecoli.mac" -t 16
hadd -f kelectronmicro.root micro*root
#cp $MULTISCALE_DIR/micro/build/microanalysis.C ./
#root -b -q -l 'microanalysis.C("kelectronmicro.root")'
rm micro*root
#rm microanalysis.C
#mv kelectronmicro.root.cellelectronhisto cellelectrons.hist

