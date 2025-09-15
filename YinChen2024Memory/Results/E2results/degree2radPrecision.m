for m=1:288
    if ConResults(m,10)>180;
        n = ConResults(m,10)-180;
        ConResults(m,10) = n;
    end
    if ConResults(m,10)<0;
        n = ConResults(m,10)+180;
        ConResults(m,10) = n;
    end
end

a=ConResults(:,9:11);
X=wrap(a/90*pi);
ConResults(:,9:11)=X;

a1=1;
a2=1;
a3=1;
for i=1:288
    if ConResults(i,3) == 1
        if ConResults(i,3) == ConResults(i,1)
            selfTarg(a1,1) = ConResults(i,9);
            selfResp(a1,1) = ConResults(i,11);
            RT(a1,1) = ConResults(i,12);
            a1=a1+1;
        else
            selfTarg(a1,1) = ConResults(i,10);
            selfResp(a1,1) = ConResults(i,11);
            RT(a1,1) = ConResults(i,12);
            a1=a1+1;
        end
    elseif ConResults(i,3) == 2
        if ConResults(i,3) == ConResults(i,1)
            friendTarg(a2,1) = ConResults(i,9);
            friendResp(a2,1) = ConResults(i,11);
            RT(a2,2) = ConResults(i,12);
            a2=a2+1;
        else
            friendTarg(a2,1) = ConResults(i,10);
            friendResp(a2,1) = ConResults(i,11);
            RT(a2,2) = ConResults(i,12);
            a2=a2+1;
        end
    elseif ConResults(i,3) == 3
        if ConResults(i,3) == ConResults(i,1)
            strangerTarg(a3,1) = ConResults(i,9);
            strangerResp(a3,1) = ConResults(i,11);
            RT(a3,3) = ConResults(i,12);
            a3=a3+1;
        else
            strangerTarg(a3,1) = ConResults(i,10);
            strangerResp(a3,1) = ConResults(i,11);
            RT(a3,3) = ConResults(i,12);
            a3=a3+1;
        end
    end
end
clear a a1 a2 a3 b i m


[Pself Bself] = JV10_error(selfResp,selfTarg);
[Pfriend Bfriend] = JV10_error(friendResp,friendTarg);
[Pstranger Bstranger] = JV10_error(strangerResp,strangerTarg);
ResultP(1,1) = Pself;
ResultP(1,2) = Pfriend;
ResultP(1,3) = Pstranger;
ResultB(1,1) = Bself;
ResultB(1,2) = Bfriend;
ResultB(1,3) = Bstranger;
mRT = mean(RT);
