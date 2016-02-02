function ngauss = ngauss(distsq,my,var)
% ngauss is a normalized gaussian in one dimension
% my is center for the bell shaped gaussians
% sdev is the standard deviation, equal in all dimension
dims=cols(my);
ngauss=exp(-0.5*distsq./(var))./(pi*var*2).^(dims/2);
