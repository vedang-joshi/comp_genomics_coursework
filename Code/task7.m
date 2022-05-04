%% Task 7
mito_sequence_dog=getgenbank('NC_002008');
sequence_dog = mito_sequence_dog.Sequence;
sequence_cytb = sequence_dog(14183:15322);
sequence_nadh1 = sequence_dog(2747:3702);
sequence_cytb_translate = nt2aa(sequence_cytb,'GeneticCode','Vertebrate Mitochondrial');
sequence_NADH1_translate = nt2aa(sequence_nadh1,'GeneticCode','Vertebrate Mitochondrial');

mito_sequence_cat=getgenbank('NC_001700');
mito_sequence_cat = mito_sequence_cat.Sequence;
mito_sequence_cat_cytb = mito_sequence_cat(15038:16177);
mito_sequence_cat_nadh1 = mito_sequence_cat(3615:4570);
mito_sequence_cat_cytb_translate = nt2aa(mito_sequence_cat_cytb,'GeneticCode','Vertebrate Mitochondrial');
mito_sequence_cat_NADH1_translate = nt2aa(mito_sequence_cat_nadh1,'GeneticCode','Vertebrate Mitochondrial');


mito_sequence_mouse=getgenbank('NC_005089');
mito_sequence_mouse = mito_sequence_mouse.Sequence;
mito_sequence_mouse_cytb = mito_sequence_mouse(14145:15288);
mito_sequence_mouse_nadh1 = mito_sequence_mouse(2751:3707);
mito_sequence_mouse_cytb_translate = nt2aa(mito_sequence_mouse_cytb,'GeneticCode','Vertebrate Mitochondrial');
mito_sequence_mouse_NADH1_translate = nt2aa(mito_sequence_mouse_nadh1,'GeneticCode','Vertebrate Mitochondrial');

fastawrite('dog_cat_mouse_cytb_protein.fa','Domestic dog',sequence_cytb_translate);
fastawrite('dog_cat_mouse_cytb_protein.fa','Domestic cat',mito_sequence_cat_cytb_translate);
fastawrite('dog_cat_mouse_cytb_protein.fa','House mouse',mito_sequence_mouse_cytb_translate);

fastawrite('dog_cat_mouse_nadh1_protein.fa','Domestic dog',sequence_NADH1_translate);
fastawrite('dog_cat_mouse_nadh1_protein.fa','Domestic cat',mito_sequence_cat_NADH1_translate);
fastawrite('dog_cat_mouse_nadh1_protein.fa','House mouse',mito_sequence_mouse_NADH1_translate);

seqs_cytb_protein_dog_cat_mouse = fastaread('dog_cat_mouse_cytb_protein.fa');
seqalignviewer(multialign(seqs_cytb_protein_dog_cat_mouse),'Alphabet','AA')

seqs_nadh1_protein_dog_cat_mouse = fastaread('dog_cat_mouse_nadh1_protein.fa');
seqalignviewer(multialign(seqs_nadh1_protein_dog_cat_mouse),'Alphabet','AA')