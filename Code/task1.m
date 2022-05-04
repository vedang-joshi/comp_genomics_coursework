%% Task 1
% Retrieve dog, cat, mouse data from Genbank
mito_sequence_dog=getgenbank('NC_002008');
mito_sequence_cat=getgenbank('NC_001700');
mito_sequence_mouse=getgenbank('NC_005089');

% Calculating Sequence Statistics
%Report nucleotide base counts in a sequence.
bases_mito_sequence_dog=basecount(mito_sequence_dog);
bases_mito_sequence_cat=basecount(mito_sequence_cat);
bases_mito_sequence_mouse=basecount(mito_sequence_mouse);

%Report reverse complement basecount
compBases_dog = basecount(seqrcomplement(mito_sequence_dog));
compBases_cat = basecount(seqrcomplement(mito_sequence_cat));
compBases_mouse = basecount(seqrcomplement(mito_sequence_mouse));

%Report dimer counts in a sequence and plot histogram
dimercount_mito_sequence_dog = dimercount(mito_sequence_dog,'chart','bar');
title('Dog Mitochondrial Genome Dimer Histogram');

dimercount_mito_sequence_cat = dimercount(mito_sequence_cat,'chart','bar');
title('Cat Mitochondrial Genome Dimer Histogram');

dimercount_mito_sequence_mouse = dimercount(mito_sequence_mouse,'chart','bar');
title('Mouse Mitochondrial Genome Dimer Histogram');

figure
ntdensity(mito_sequence_dog)

% To ensure that any potential protein coding regions found do not occur by
% chance, we try to find a threshold value to filter spurious ORFs.
% We create a random sequence from the mitochondrial dog sequence:
dog_randsequence=mito_sequence_dog(randperm(length(mito_sequence_dog)));
dog_randsequence_orfs=seqshoworfs(dog_randsequence,'GeneticCode','Vertebrate Mitochondrial','frames','all','minimumlength',1,'nodisplay','on');

r=0;
for k=1:6
    if (length(dog_randsequence_orfs(k).Stop)==length(dog_randsequence_orfs(k).Start)) 
        r=[r,dog_randsequence_orfs(k).Stop(1:end)-dog_randsequence_orfs(k).Start(1:end)];
    else
        r=[r,dog_randsequence_orfs(k).Stop(1:end)-dog_randsequence_orfs(k).Start(1:end-1)];
    end
end
r=r(2:end);
h2=histogram(r,3000); 
x2=h2.Values; 
figure; 
bar(x2,'red','facealpha',.5);
prctile(r,99)/3;
% 99% of ORFs are shorter than 358.0700 nucleotides i.e. 119 amino acids.
% This is the threshold we shall use for filtering spurious ORFs.

% Show open reading frames in all 6 frames, for vertebrate mitochondrial
% genetic code.
orfs_mito_sequence_dog = seqshoworfs(mito_sequence_dog,'GeneticCode','Vertebrate Mitochondrial','frames','all','AlternativeStartCodons',true,'MINIMUMLENGTH',119);
sequence_cytb = mito_sequence_dog.Sequence;
sequence_cytb = sequence_cytb(14183:15322);
sequence_cytb_translate = nt2aa(sequence_cytb,'GeneticCode','Vertebrate Mitochondrial');

sequence_nadh1 = mito_sequence_dog.Sequence;
sequence_nadh1 = sequence_nadh1(2747:3702);
sequence_nadh1_translate = nt2aa(sequence_nadh1,'GeneticCode','Vertebrate Mitochondrial');



mito_sequence_wolf=getgenbank('NC_008092');
mito_sequence_wolf_full_genome = mito_sequence_wolf.Sequence;

mito_sequence_desert_fox=getgenbank('KT448284');
mito_sequence_desert_fox_full_genome = mito_sequence_desert_fox.Sequence;

mito_sequence_golden_jackal=getgenbank('MZ433379');
mito_sequence_golden_jackal_full_genome = mito_sequence_golden_jackal.Sequence;

mito_sequence_american_marten=getgenbank('NC_020642');
mito_sequence_american_marten_full_genome = mito_sequence_american_marten.Sequence;

mito_sequence_mole=getgenbank('MZ708834');
mito_sequence_mole_full_genome = mito_sequence_mole.Sequence;

mito_sequence_croc=getgenbank('NC_008143');
mito_sequence_croc_full_genome = mito_sequence_croc.Sequence;


fastawrite('dog_full_genome.fa','Domestic dog',mito_sequence_dog.Sequence);
fastawrite('dog_full_genome.fa','Grey wolf',mito_sequence_wolf_full_genome);
fastawrite('dog_full_genome.fa','Sechura desert fox',mito_sequence_desert_fox_full_genome);
fastawrite('dog_full_genome.fa','Golden jackal',mito_sequence_golden_jackal_full_genome);
fastawrite('dog_full_genome.fa','American marten',mito_sequence_american_marten_full_genome);
fastawrite('dog_full_genome.fa','Long-tailed mole',mito_sequence_mole_full_genome);
fastawrite('dog_full_genome.fa','Saltwater crocodile',mito_sequence_croc_full_genome);