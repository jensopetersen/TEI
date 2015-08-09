cd Source/impureSpecs/
for f in *.xml; do echo $f; saxon -o:../Specs/$f -s:$f -xsl:../../Scripts/purify.xsl; done
