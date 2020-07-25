function [NewNextPathY, NewNextPathX, NewTrack] = CheckPath(CurrentPath, NextPathX, NextPathY)

NewNextPathY = NextPathY;
NewNextPathX = NextPathX;
%Fix invalid Y NextPath
if(CurrentPath == 1 || CurrentPath == 3 || CurrentPath == 5)
    if(NextPathY == 1)
        NewNextPathY = -1;
        NewNextPathX = NextPathX;
    end
end

if(CurrentPath == 21 || CurrentPath == 23 ||CurrentPath == 25)
    if(NextPathY == -1)
        NewNextPathY = 1;
        NewNextPathX = NextPathX;
    end
end

%Fix invalid X NextPath
if(CurrentPath == 1 || CurrentPath == 11 || CurrentPath == 21)
    if(NextPathX == -1)
        NewNextPathX = 1;
        NewNextPathY = NextPathY;
    end
end

if(CurrentPath == 5 || CurrentPath == 15 || CurrentPath == 25)
    if(NextPathX == 1)
        NewNextPathX = -1;
        NewNextPathY = NextPathY;
    end
end

switch CurrentPath
    case 1 %A
        if (NewNextPathY == -1 && NewNextPathX == 1)
            NewTrack = 7;
        end
    case 3 %C
        if (NewNextPathY == -1 && NewNextPathX == 1)
            NewTrack = 9;
        elseif (NewNextPathY == -1 && NewNextPathX == -1)
            NewTrack = 7;
        end
    case 5 %E
        if (NewNextPathY == -1 && NewNextPathX == -1)
            NewTrack = 9;
        end
    case 7 %G
        if (NewNextPathY == -1 && NewNextPathX == -1)
            NewTrack = 11;
        elseif (NewNextPathY == 1 && NewNextPathX == 1)
            NewTrack = 3;
        elseif (NewNextPathY == -1 && NewNextPathX == 1)
            NewTrack = 13;
        elseif (NewNextPathY == 1 && NewNextPathX == -1)
            NewTrack = 1;
        end
    case 9 %I
        if (NewNextPathY == -1 && NewNextPathX == -1)
            NewTrack = 13;
        elseif (NewNextPathY == 1 && NewNextPathX == 1)
            NewTrack = 5;
        elseif (NewNextPathY == -1 && NewNextPathX == 1)
            NewTrack = 15;
        elseif (NewNextPathY == 1 && NewNextPathX == -1)
            NewTrack = 3;
        end
    case 11 %K
        if (NewNextPathY == -1 && NewNextPathX == 1)
            NewTrack = 17;
        elseif (NewNextPathY == 1 && NewNextPathX == 1)
            NewTrack = 7;
        end
    case 13 %M
        if (NewNextPathY == -1 && NewNextPathX == -1)
            NewTrack = 17;
        elseif (NewNextPathY == 1 && NewNextPathX == 1)
            NewTrack = 9;
        elseif (NewNextPathY == -1 && NewNextPathX == 1)
            NewTrack = 19;
        elseif (NewNextPathY == 1 && NewNextPathX == -1)
            NewTrack = 7;
        end
    case 15 %O
        if (NewNextPathY == 1 && NewNextPathX == -1)
            NewTrack = 9;
        elseif (NewNextPathY == -1 && NewNextPathX == -1)
            NewTrack = 19;
        end
    case 17 %Q
        if (NewNextPathY == -1 && NewNextPathX == -1)
            NewTrack = 21;
        elseif (NewNextPathY == 1 && NewNextPathX == 1)
            NewTrack = 13;
        elseif (NewNextPathY == -1 && NewNextPathX == 1)
            NewTrack = 23;
        elseif (NewNextPathY == 1 && NewNextPathX == -1)
            NewTrack = 11;
        end
    case 19 %S
        if (NewNextPathY == -1 && NewNextPathX == -1)
            NewTrack = 23;
        elseif (NewNextPathY == 1 && NewNextPathX == 1)
            NewTrack = 15;
        elseif (NewNextPathY == -1 && NewNextPathX == 1)
            NewTrack = 25;
        elseif (NewNextPathY == 1 && NewNextPathX == -1)
            NewTrack = 13;
        end
    case 21 %U
        if (NewNextPathY == 1 && NewNextPathX == 1)
            NewTrack = 17;
        end
    case 23 %X
        if (NewNextPathY == 1 && NewNextPathX == 1)
            NewTrack = 19;
        elseif (NewNextPathY == 1 && NewNextPathX == -1)
            NewTrack = 17;
        end
    case 25 %Z
        if (NewNextPathY == 1 && NewNextPathX == -1)
            NewTrack = 19;
        end
end
end

