wget ftp://ftp.ensembl.org/pub/release-89/fasta/homo_sapiens/cdna/Homo_sapiens.GRCh38.cdna.all.fa.gz
gunzip Homo_sapiens.GRCh38.cdna.all.fa.gz
grep ">" Homo_sapiens.GRCh38.cdna.all.fa > Homo_sapiens.GRCh38.cdna.all.fa.Info
cut -d " " -f 1,4 Homo_sapiens.GRCh38.cdna.all.fa.Info > Homo_sapiens.GRCh38.cdna.all.fa.Info2
sed -i 's/>//g' Homo_sapiens.GRCh38.cdna.all.fa.Info2
sed 's/gene://g' Homo_sapiens.GRCh38.cdna.all.fa.Info2 > Homo_sapiens.GRCh38.cdna.all.fa.tx2gene
sed -i 's/ /,/g' Homo_sapiens.GRCh38.cdna.all.fa.tx2gene
