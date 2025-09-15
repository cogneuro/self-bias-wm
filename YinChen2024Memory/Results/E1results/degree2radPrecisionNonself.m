for m=1:168
    if ConResults(m,10)>180;
        n = ConResults(m,10)-180;
        ConResults(m,10) = n;
    end
    if ConResults(m,10)<0;
        n = ConResults(m,10)+180;
        ConResults(m,10) = n;
    end
end

a=ConResults(:,8:10);
X=wrap(a/90*pi);
ConResults(:,8:10)=X;

a1=1;
a2=1;
for i=1:168
    if ConResults(i,1) == 1 || ConResults(i,2) == 1
        if ConResults(i,3) == 2
            if ConResults(i,3) == ConResults(i,1)
                withselfTarg(a1,1) = ConResults(i,8);
                withselfResp(a1,1) = ConResults(i,10);
                a1=a1+1;
            else
                withselfTarg(a1,1) = ConResults(i,9);
                withselfResp(a1,1) = ConResults(i,10);
                a1=a1+1;
            end
        elseif ConResults(i,3) == 3
            if ConResults(i,3) == ConResults(i,1)
                withselfTarg(a1,1) = ConResults(i,8);
                withselfResp(a1,1) = ConResults(i,10);
                a1=a1+1;
            else
                withselfTarg(a1,1) = ConResults(i,9);
                withselfResp(a1,1) = ConResults(i,10);
                a1=a1+1;
            end
        end
    elseif ConResults(i,3) == ConResults(i,1)
        noneselfTarg(a2,1) = ConResults(i,8);
        noneselfResp(a2,1) = ConResults(i,10);
        a2=a2+1;
    else
        noneselfTarg(a2,1) = ConResults(i,9);
        noneselfResp(a2,1) = ConResults(i,10);
        a2=a2+1;
    end
end

[Pwithself Bwithself] = JV10_error(withselfResp,withselfTarg);
[Pnoneself Bnoneself] = JV10_error(noneselfResp,noneselfTarg);
ResultP(1,1) = Pwithself;
ResultP(1,2) = Pnoneself;
ResultB(1,1) = Bwithself;
ResultB(1,2) = Bnoneself;

