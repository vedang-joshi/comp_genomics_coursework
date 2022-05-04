%% Task 3
seqs = fastaread('dog_full_genome.fa');
% Measure the 'Jukes-Cantor' pairwise distances:
dist = seqpdist(seqs,'method','jukes-cantor','indels','pair','Alphabet', 'NT');
% Build the phylogenetic using the neighbor-joining algorithm 
tree = seqneighjoin(dist,'equivar',seqs);
plot(tree);