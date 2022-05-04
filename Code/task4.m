%% Task 4
mito_sequence_dog=getgenbank('NC_002008');
sequence_dog = mito_sequence_dog.Sequence;
sequence_cytb = sequence_dog(14183:15322);
sequence_nadh1 = sequence_dog(2747:3702);
sequence_cytb_translate = nt2aa(sequence_cytb,'GeneticCode','Vertebrate Mitochondrial');
sequence_NADH1_translate = nt2aa(sequence_nadh1,'GeneticCode','Vertebrate Mitochondrial');


mito_sequence_wolf=getgenbank('NC_008092');
mito_sequence_wolf = mito_sequence_wolf.Sequence;
mito_sequence_wolf_cytb = mito_sequence_wolf(14186:15325);
mito_sequence_wolf_nadh1 = mito_sequence_wolf(2748:3704);
mito_sequence_wolf_cytb_translate = nt2aa(mito_sequence_wolf_cytb,'GeneticCode','Vertebrate Mitochondrial');
mito_sequence_wolf_NADH1_translate = nt2aa(mito_sequence_wolf_nadh1,'GeneticCode','Vertebrate Mitochondrial');


mito_sequence_desert_fox=getgenbank('KT448284');
mito_sequence_desert_fox = mito_sequence_desert_fox.Sequence;
mito_sequence_desert_fox_cytb = mito_sequence_desert_fox(14143:15282);
mito_sequence_desert_fox_nadh1 = mito_sequence_desert_fox(2707:3663);
mito_sequence_desert_fox_cytb_translate = nt2aa(mito_sequence_desert_fox_cytb,'GeneticCode','Vertebrate Mitochondrial');
mito_sequence_desert_fox_NADH1_translate = nt2aa(mito_sequence_desert_fox_nadh1,'GeneticCode','Vertebrate Mitochondrial');


mito_sequence_golden_jackal=getgenbank('MZ433379');
mito_sequence_golden_jackal = mito_sequence_golden_jackal.Sequence;
mito_sequence_golden_jackal_cytb = mito_sequence_golden_jackal(14185:15324);
mito_sequence_golden_jackal_nadh1 = mito_sequence_desert_fox(2750:3705);
mito_sequence_golden_jackal_cytb_translate = nt2aa(mito_sequence_golden_jackal_cytb,'GeneticCode','Vertebrate Mitochondrial');
mito_sequence_golden_jackal_NADH1_translate = nt2aa(mito_sequence_golden_jackal_nadh1,'GeneticCode','Vertebrate Mitochondrial');


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


mito_sequence_croc=getgenbank('KY616982');
mito_sequence_croc = mito_sequence_croc.Sequence;
mito_sequence_croc_cytb = mito_sequence_croc(14148:15284);
mito_sequence_croc_nadh1 = mito_sequence_croc(2740:3696);
mito_sequence_croc_cytb_translate = nt2aa(mito_sequence_croc_cytb,'GeneticCode','Vertebrate Mitochondrial');
mito_sequence_croc_NADH1_translate = nt2aa(mito_sequence_croc_nadh1,'GeneticCode','Vertebrate Mitochondrial');


fastawrite('dog_cytb.fa','Domestic dog',sequence_cytb);
fastawrite('dog_cytb.fa','Grey wolf',mito_sequence_wolf_cytb);
fastawrite('dog_cytb.fa','Desert fox',mito_sequence_desert_fox_cytb);
fastawrite('dog_cytb.fa','Golden jackal',mito_sequence_golden_jackal_cytb);
fastawrite('dog_cytb.fa','Domestic cat',mito_sequence_cat_cytb);
fastawrite('dog_cytb.fa','House mouse',mito_sequence_mouse_cytb);
fastawrite('dog_cytb.fa','African bush elephant',mito_sequence_croc_cytb);


fastawrite('dog_nadh1.fa','Domestic dog',sequence_nadh1);
fastawrite('dog_nadh1.fa','Grey wolf',mito_sequence_wolf_nadh1);
fastawrite('dog_nadh1.fa','Desert fox',mito_sequence_desert_fox_nadh1);
fastawrite('dog_nadh1.fa','Golden jackal',mito_sequence_golden_jackal_nadh1);
fastawrite('dog_nadh1.fa','Domestic cat',mito_sequence_cat_nadh1);
fastawrite('dog_nadh1.fa','House mouse',mito_sequence_mouse_nadh1);
fastawrite('dog_nadh1.fa','African bush elephant',mito_sequence_croc_nadh1);

fastawrite('dog_cytb_TRANSLATE.fa','Domestic dog',sequence_cytb_translate);
fastawrite('dog_cytb_TRANSLATE.fa','Grey wolf',mito_sequence_wolf_cytb_translate);
fastawrite('dog_cytb_TRANSLATE.fa','Desert fox',mito_sequence_desert_fox_cytb_translate);
fastawrite('dog_cytb_TRANSLATE.fa','Golden jackal',mito_sequence_golden_jackal_cytb_translate);
fastawrite('dog_cytb_TRANSLATE.fa','Domestic cat',mito_sequence_cat_cytb_translate);
fastawrite('dog_cytb_TRANSLATE.fa','House mouse',mito_sequence_mouse_cytb_translate);
fastawrite('dog_cytb_TRANSLATE.fa','African bush elephant',mito_sequence_croc_cytb_translate);

fastawrite('dog_nadh1_TRANSLATE.fa','Domestic dog',sequence_NADH1_translate);
fastawrite('dog_nadh1_TRANSLATE.fa','Grey wolf',mito_sequence_wolf_NADH1_translate);
fastawrite('dog_nadh1_TRANSLATE.fa','Desert fox',mito_sequence_desert_fox_NADH1_translate);
fastawrite('dog_nadh1_TRANSLATE.fa','Golden jackal',mito_sequence_golden_jackal_NADH1_translate);
fastawrite('dog_nadh1_TRANSLATE.fa','Domestic cat',mito_sequence_cat_NADH1_translate);
fastawrite('dog_nadh1_TRANSLATE.fa','House mouse',mito_sequence_mouse_NADH1_translate);
fastawrite('dog_nadh1_TRANSLATE.fa','African bush elephant',mito_sequence_croc_NADH1_translate);


seqs_cytb = fastaread('dog_cytb.fa');
% Measure the 'Jukes-Cantor' pairwise distances:
dist_cytb = seqpdist(seqs_cytb,'method','jukes-cantor','indels','pair','Alphabet', 'NT');
dist_cytb

seqs_nadh1 = fastaread('dog_nadh1.fa');
% Measure the 'Jukes-Cantor' pairwise distances:
dist_nadh1 = seqpdist(seqs_nadh1,'method','jukes-cantor','indels','pair','Alphabet', 'NT');
dist_nadh1








