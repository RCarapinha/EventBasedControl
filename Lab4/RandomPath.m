function [NextPathX, NextPathY] = RandomPath()
    for i = 0
        NextPathX = round(rand(1)*2-1);
        if (NextPathX ~= 0)
            i = 1;
        else
            i = 0;
        end
    end
    
    for j = 0
        NextPathY = round(rand(1)*2-1);
        if (NextPathY ~= 0)
            j = 1;
        else
            j = 0;
        end
    end
    return
end

