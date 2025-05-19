clc
clear

% gen
target = 'tegar'
len = length(target);
genes = create_genes(len);

% fitness
fitness = calculate_fitness(genes,len);
