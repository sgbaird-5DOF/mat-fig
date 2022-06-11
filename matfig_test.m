% mat-fig test code
paperfigure(); % 1x1 tiled layout at half column paper figure width
ytrue = (0.1:0.001:1).';
yobs = normrnd(ytrue,0.1);
parityplot(ytrue,yobs);
figfolder = '.'; %current directory
fname = 'test';
savefigpng(figfolder,fname); %save figure and png (300 dpi)