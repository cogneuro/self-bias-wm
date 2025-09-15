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
a4=1;
a5=1;
a6=1;
for i=1:288
    if ConResults(i,1) + ConResults(i,2) == 3
        if ConResults(i,3) == 1
            if ConResults(i,3) == ConResults(i,1)
                selffriendTarg(a1,1) = ConResults(i,9);
                selffriendResp(a1,1) = ConResults(i,11);
                RT(a1,1) = ConResults(i,12);
                a1=a1+1;
            else
                selffriendTarg(a1,1) = ConResults(i,10);
                selffriendResp(a1,1) = ConResults(i,11);
                RT(a1,1) = ConResults(i,12);
                a1=a1+1;
            end
        else
            if ConResults(i,3) == ConResults(i,1)
                friendselfTarg(a2,1) = ConResults(i,9);
                friendselfResp(a2,1) = ConResults(i,11);
                RT(a2,2) = ConResults(i,12);
                a2=a2+1;            
            else
                friendselfTarg(a2,1) = ConResults(i,10);
                friendselfResp(a2,1) = ConResults(i,11);
                RT(a2,2) = ConResults(i,12);
                a2=a2+1;
            end
        end
    elseif ConResults(i,1) + ConResults(i,2) == 4
        if ConResults(i,3) == 1
            if ConResults(i,3) == ConResults(i,1)
                selfstrangerTarg(a3,1) = ConResults(i,9);
                selfstrangerResp(a3,1) = ConResults(i,11);
                RT(a3,3) = ConResults(i,12);
                a3=a3+1;
            else
                selfstrangerTarg(a3,1) = ConResults(i,10);
                selfstrangerResp(a3,1) = ConResults(i,11);
                RT(a3,3) = ConResults(i,12);
                a3=a3+1;
            end
        else
            if ConResults(i,3) == ConResults(i,1)
                strangerselfTarg(a4,1) = ConResults(i,9);
                strangerselfResp(a4,1) = ConResults(i,11);
                RT(a4,4) = ConResults(i,12);
                a4=a4+1;            
            else
                strangerselfTarg(a4,1) = ConResults(i,10);
                strangerselfResp(a4,1) = ConResults(i,11);
                RT(a4,4) = ConResults(i,12);
                a4=a4+1;
            end
        end
    elseif ConResults(i,1) + ConResults(i,2) == 5
        if ConResults(i,3) == 2
            if ConResults(i,3) == ConResults(i,1)
                friendstrangerTarg(a5,1) = ConResults(i,9);
                friendstrangerResp(a5,1) = ConResults(i,11);
                RT(a5,5) = ConResults(i,12);
                a5=a5+1;
            else
                friendstrangerTarg(a5,1) = ConResults(i,10);
                friendstrangerResp(a5,1) = ConResults(i,11);
                RT(a5,5) = ConResults(i,12);
                a5=a5+1;
            end
        else
            if ConResults(i,3) == ConResults(i,1)
                strangerfriendTarg(a6,1) = ConResults(i,9);
                strangerfriendResp(a6,1) = ConResults(i,11);
                RT(a6,6) = ConResults(i,12);
                a6=a6+1;            
            else
                strangerfriendTarg(a6,1) = ConResults(i,10);
                strangerfriendResp(a6,1) = ConResults(i,11);
                RT(a6,6) = ConResults(i,12);
                a6=a6+1;
            end
        end
    end
end

[P1 B1] = JV10_error(selffriendResp,selffriendTarg);
[P2 B2] = JV10_error(friendselfResp,friendselfTarg);
[P3 B3] = JV10_error(selfstrangerResp,selfstrangerTarg);
[P4 B4] = JV10_error(strangerselfResp,strangerselfTarg);
[P5 B5] = JV10_error(friendstrangerResp,friendstrangerTarg);
[P6 B6] = JV10_error(strangerfriendResp,strangerfriendTarg);

ResultP(1,1) = P1;
ResultP(1,2) = P2;
ResultP(1,3) = P3;
ResultP(1,4) = P4;
ResultP(1,5) = P5;
ResultP(1,6) = P6;

mRT = mean(RT);