mkdir Source/impureSpecs
cp Source/Specs Source/impureSpecs
rm Source/impureSpecs/data.* Source/impureSpecs/teidata.*
cd Source/impureSpecs/
for f in *.xml; do echo $f; saxon -o:../Specs/$f -s:$f -xsl:../../Scripts/purify.xsl; done
