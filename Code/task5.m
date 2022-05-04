%% Task 5
seqs_cytb = fastaread('dog_cytb.fa');
% Measure the 'Jukes-Cantor' pairwise distances:
dist_cytb = seqpdist(seqs_cytb,'method','jukes-cantor','indels','pair','Alphabet', 'NT');
% Build the phylogenetic using the neighbor-joining algorithm 
tree_cytb = seqneighjoin(dist_cytb,'equivar',seqs_cytb);
plot(tree_cytb);
title('Phylogenetic Tree CYTB NT');

seqs_nadh1 = fastaread('dog_nadh1.fa');
% Measure the 'Jukes-Cantor' pairwise distances:
dist_nadh1 = seqpdist(seqs_nadh1,'method','jukes-cantor','indels','pair','Alphabet', 'NT');
% Build the phylogenetic using the neighbor-joining algorithm 
tree_nadh1 = seqneighjoin(dist_nadh1,'equivar',seqs_nadh1);
plot(tree_nadh1);
title('Phylogenetic Tree NADH1 NT');

seqs_nadh1 = fastaread('dog_cytb_TRANSLATE.fa');
% Measure the 'Jukes-Cantor' pairwise distances:
dist_nadh1 = seqpdist(seqs_nadh1,'method','jukes-cantor','indels','pair','Alphabet', 'AA');
% Build the phylogenetic using the neighbor-joining algorithm 
tree_nadh1 = seqneighjoin(dist_nadh1,'equivar',seqs_nadh1);
plot(tree_nadh1);
title('Phylogenetic Tree CYTB AA');


seqs_nadh1 = fastaread('dog_nadh1_TRANSLATE.fa');
% Measure the 'Jukes-Cantor' pairwise distances:
dist_nadh1 = seqpdist(seqs_nadh1,'method','jukes-cantor','indels','pair','Alphabet', 'AA');
% Build the phylogenetic using the neighbor-joining algorithm 
tree_nadh1 = seqneighjoin(dist_nadh1,'equivar',seqs_nadh1);
plot(tree_nadh1);
title('Phylogenetic Tree NADH1 AA');
