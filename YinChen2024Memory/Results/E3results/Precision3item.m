for m=1:180
    if ConResults(m,9)>180;
        n = ConResults(m,9)-180;
        ConResults(m,9) = n;
    end
    if ConResults(m,9)<0;
        n = ConResults(m,9)+180;
        ConResults(m,9) = n;
    end
end

a=ConResults(:,6:9);
X=wrap(a/90*pi);
ConResults(:,6:9)=X;

a1=1;
a2=1;
a3=1;
for i=1:180
    if ConResults(i,5) == 2.6
        if ConResults(i,4) ==1
            if ConResults(i,4) == ConResults(i,1)
                self3Targ(a1,1) = ConResults(i,6);
                self3Resp(a1,1) = ConResults(i,9);
                a1=a1+1;
            elseif ConResults(i,4) == ConResults(i,2)
                self3Targ(a1,1) = ConResults(i,7);
                self3Resp(a1,1) = ConResults(i,9);
                a1=a1+1;
            elseif ConResults(i,4) == ConResults(i,3)
                self3Targ(a1,1) = ConResults(i,8);
                self3Resp(a1,1) = ConResults(i,9);
                a1=a1+1;
            end
        elseif ConResults(i,4) ==2
            if ConResults(i,4) == ConResults(i,1)
                friend3Targ(a2,1) = ConResults(i,6);
                friend3Resp(a2,1) = ConResults(i,9);
                a2=a2+1;
            elseif ConResults(i,4) == ConResults(i,2)
                friend3Targ(a2,1) = ConResults(i,7);
                friend3Resp(a2,1) = ConResults(i,9);
                a2=a2+1;
            elseif ConResults(i,4) == ConResults(i,3)
                friend3Targ(a2,1) = ConResults(i,8);
                friend3Resp(a2,1) = ConResults(i,9);
                a2=a2+1;
            end
        elseif ConResults(i,4) ==3
            if ConResults(i,4) == ConResults(i,1)
                stranger3Targ(a3,1) = ConResults(i,6);
                stranger3Resp(a3,1) = ConResults(i,9);
                a3=a3+1;
            elseif ConResults(i,4) == ConResults(i,2)
                stranger3Targ(a3,1) = ConResults(i,7);
                stranger3Resp(a3,1) = ConResults(i,9);
                a3=a3+1;
            elseif ConResults(i,4) == ConResults(i,3)
                stranger3Targ(a3,1) = ConResults(i,8);
                stranger3Resp(a3,1) = ConResults(i,9);
                a3=a3+1;
            end
        end
    end
end
clear a a1 a2 a3 b i m


[Pself3 Bself3] = JV10_error(self3Resp,self3Targ);
[Pfriend3 Bfriend3] = JV10_error(friend3Resp,friend3Targ);
[Pstranger3 Bstranger3] = JV10_error(stranger3Resp,stranger3Targ);
ResultP(1,1) = Pself3;
ResultP(1,2) = Pfriend3;
ResultP(1,3) = Pstranger3;

a1=1;
a2=1;
a3=1;
for i=1:180
    if ConResults(i,5) == 1.6
        if ConResults(i,4) ==1
            if ConResults(i,4) == ConResults(i,1)
                self2Targ(a1,1) = ConResults(i,6);
                self2Resp(a1,1) = ConResults(i,9);
                a1=a1+1;
            elseif ConResults(i,4) == ConResults(i,2)
                self2Targ(a1,1) = ConResults(i,7);
                self2Resp(a1,1) = ConResults(i,9);
                a1=a1+1;
            elseif ConResults(i,4) == ConResults(i,3)
                self2Targ(a1,1) = ConResults(i,8);
                self2Resp(a1,1) = ConResults(i,9);
                a1=a1+1;
            end
        elseif ConResults(i,4) ==2
            if ConResults(i,4) == ConResults(i,1)
                friend2Targ(a2,1) = ConResults(i,6);
                friend2Resp(a2,1) = ConResults(i,9);
                a2=a2+1;
            elseif ConResults(i,4) == ConResults(i,2)
                friend2Targ(a2,1) = ConResults(i,7);
                friend2Resp(a2,1) = ConResults(i,9);
                a2=a2+1;
            elseif ConResults(i,4) == ConResults(i,3)
                friend2Targ(a2,1) = ConResults(i,8);
                friend2Resp(a2,1) = ConResults(i,9);
                a2=a2+1;
            end
        elseif ConResults(i,4) ==3
            if ConResults(i,4) == ConResults(i,1)
                stranger2Targ(a3,1) = ConResults(i,6);
                stranger2Resp(a3,1) = ConResults(i,9);
                a3=a3+1;
            elseif ConResults(i,4) == ConResults(i,2)
                stranger2Targ(a3,1) = ConResults(i,7);
                stranger2Resp(a3,1) = ConResults(i,9);
                a3=a3+1;
            elseif ConResults(i,4) == ConResults(i,3)
                stranger2Targ(a3,1) = ConResults(i,8);
                stranger2Resp(a3,1) = ConResults(i,9);
                a3=a3+1;
            end
        end
    end
end

[Pself2 Bself2] = JV10_error(self2Resp,self2Targ);
[Pfriend2 Bfriend2] = JV10_error(friend2Resp,friend2Targ);
[Pstranger2 Bstranger2] = JV10_error(stranger2Resp,stranger2Targ);
ResultP(1,4) = Pself2;
ResultP(1,5) = Pfriend2;
ResultP(1,6) = Pstranger2;
