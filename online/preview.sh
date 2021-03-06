echo "Rendering Cypher Training"
asciidoctor -T _templates cypher/index_60-Minute-Cypher.adoc -o cypher/index_wp.html
asciidoctor -T _templates cypher/part*.adoc -o cypher/
asciidoctor -a image=$IMG -a env-training -T _templates/parts cypher/part*.adoc -D cypher/html/
echo "Rendering Production Training"
asciidoctor -T _templates production/index_neo4j_in_production.adoc -o production/index_wp.html
open cypher/index_wp.html
echo "open production/index_wp.html"
