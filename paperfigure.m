function [fig,t] = paperfigure(nrows,ncols,ht)
arguments
   nrows(1,1) double = 1
   ncols(1,1) double = 1
   ht double = []
end
% PAPERFIGURE  call figure in centimeters and with appropriate size
switch ncols
    case 1
        wd = 9;
    otherwise
        wd = 18;
end
% wd = ncols*9;
wdtmp = wd/ncols;
if isempty(ht)
    ht = nrows*wdtmp;
end
pos = [12-(wd-9)/2,7-(ht-9)/2,wd,ht];

fig = figure('Units','centimeters','Position',pos);
t = tiledlayout(nrows,ncols,'TileSpacing','compact','Padding','compact');

end

%% CODE GRAVEYARD
%{
rowcol = int2str([nrows;ncols]).';
% switch rowcol
%     case '11'
%         pos = [13 2 9 9];
%     case '21'
%         pos = [13 2 9 18];
%     case '12'
%         pos = [13 2 18 9];
%     case '22'
%         pos = [13 2 18 18];
%     case '31'
%         pos = [13 2 9 18];
%     case '41'
%     
% end
%}