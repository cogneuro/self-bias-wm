for m=1:180
    if ConResults(m,8)>180;
        n = ConResults(m,8)-180;
        ConResults(m,8) = n;
    end
    if ConResults(m,8)<0;
        n = ConResults(m,8)+180;
        ConResults(m,8) = n;
    end
end

a=ConResults(:,5:8);
X=wrap(a/90*pi);
ConResults(:,5:8)=X;

a1=1;
a2=1;
a3=1;
for i=1:180
    if ConResults(i,3) == 4
        if ConResults(i,4) == 1
            if ConResults(i,4) == ConResults(i,1)
                selfTarg(a1,1) = ConResults(i,5);
                selfResp(a1,1) = ConResults(i,8);
                a1=a1+1;
            else
                selfTarg(a1,1) = ConResults(i,6);
                selfResp(a1,1) = ConResults(i,8);
                a1=a1+1;
            end
        elseif ConResults(i,4) == 2
            if ConResults(i,4) == ConResults(i,1)
                friendTarg(a2,1) = ConResults(i,5);
                friendResp(a2,1) = ConResults(i,8);
                a2=a2+1;
            else
                friendTarg(a2,1) = ConResults(i,6);
                friendResp(a2,1) = ConResults(i,8);
                a2=a2+1;
            end
        elseif ConResults(i,4) == 3
            if ConResults(i,4) == ConResults(i,1)
                strangerTarg(a3,1) = ConResults(i,5);
                strangerResp(a3,1) = ConResults(i,8);
                a3=a3+1;
            else
                strangerTarg(a3,1) = ConResults(i,6);
                strangerResp(a3,1) = ConResults(i,8);
                a3=a3+1;
            end
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

a1=1;
a2=1;
a3=1;
for i=1:180
    if ConResults(i,3) == 5
        if ConResults(i,4) == 1
            if ConResults(i,4) == ConResults(i,1)
                selfTarg(a1,1) = ConResults(i,5);
                selfResp(a1,1) = ConResults(i,8);
                a1=a1+1;
            else
                selfTarg(a1,1) = ConResults(i,6);
                selfResp(a1,1) = ConResults(i,8);
                a1=a1+1;
            end
        elseif ConResults(i,4) == 2
            if ConResults(i,4) == ConResults(i,1)
                friendTarg(a2,1) = ConResults(i,5);
                friendResp(a2,1) = ConResults(i,8);
                a2=a2+1;
            else
                friendTarg(a2,1) = ConResults(i,6);
                friendResp(a2,1) = ConResults(i,8);
                a2=a2+1;
            end
        elseif ConResults(i,4) == 3
            if ConResults(i,4) == ConResults(i,1)
                strangerTarg(a3,1) = ConResults(i,5);
                strangerResp(a3,1) = ConResults(i,8);
                a3=a3+1;
            else
                strangerTarg(a3,1) = ConResults(i,6);
                strangerResp(a3,1) = ConResults(i,8);
                a3=a3+1;
            end
        end
    end
end
clear a a1 a2 a3 b i m

[Pself Bself] = JV10_error(selfResp,selfTarg);
[Pfriend Bfriend] = JV10_error(friendResp,friendTarg);
[Pstranger Bstranger] = JV10_error(strangerResp,strangerTarg);
ResultP(1,4) = Pself;
ResultP(1,5) = Pfriend;
ResultP(1,6) = Pstranger;
ResultB(1,4) = Bself;
ResultB(1,5) = Bfriend;
ResultB(1,6) = Bstranger;


