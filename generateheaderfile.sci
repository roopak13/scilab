function [d] = fn1(a,b,c)
    d=strcat([c," ",a,"("])
    for i=1:size(b,2)/2
        d=strcat([d,b(2*i)," ",b(2*i-1)])
        if i<size(b,2)/2 then
            d=strcat([d,","])
        end
        
    end
    d=strcat([d,")",";"]);
endfunction
[d]=fn1('foo',['x','char','y','int','w','float'],'void')
fd_w = mopen('C:/Users/user/Desktop/foo.h', 'wt');

// write a line in fd_w
mputl(d, fd_w);
mclose(fd_w);
