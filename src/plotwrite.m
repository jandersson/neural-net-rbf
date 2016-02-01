function pdesc=plotwrite(pd,com,args)
% Writes a command com followed by a set of parameters onto plot channel
% defined in pd
fwrite(pd(1),[com bytes(args)],'char');
