.PHONY: all fasta features test clean

all: clean fasta genome chr-count chr-size features gene-count verified-genes uncharacterized-genes gene-types palinsreg terminated-genes

clean:
	find . \( -name \*gene\* -o -name chr-\* \) -exec rm {} \;

fasta:
	echo "Download files into \"fasta\" directory"
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr01.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr02.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr03.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr04.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr05.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr06.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr07.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr08.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr09.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr10.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr11.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr12.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr13.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr14.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr15.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr15.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr16.fsa
wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chrmt.fsa

genome: fasta
	echo OK > fasta/genome.fa
cat fasta/chr*.fsa
chr-count: genome
	echo OK > chr-count

chr-size: genome
	echo OK > chr-size

features:
	echo "Download SGD_features.tab"

gene-count: features
	echo OK > gene-count

verified-genes: features
	echo OK > verified-genes

uncharacterized-genes: features
	echo OK > uncharacterized-genes

gene-types: features
	echo OK > gene-types

palinsreg:
	echo "Download palinsreg"

terminated-genes: palinsreg
	echo OK > terminated-genes

test:
	./test.pl6
