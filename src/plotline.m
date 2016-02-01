function pdesc=plotline(pd,coord1,coord2);
% Plots a line from coord 1 to coord 2
plotwrite(pd,'l',[plotscale(pd,coord1) plotscale(pd,coord2)]);
