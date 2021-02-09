
function [pc] =FindPaths(i,j,l,visited,totalV,w)

        if l==0
            z=isConnected(i,j,w);
            if z==-1
                pc=[];
            else
                path.points=(z);               
                pc=(path);
                return;
            end
        else
            
            visited =[visited i j];
            paths = [];
            for k=1:totalV
                
                if isempty(find(visited == k)) && isConnected(j,k,w)~=-1
                    pck = FindPaths(i,k,l-1,visited,totalV,w);                    
                    for zz=1:length(pck)
                        pathk = pck(zz);
                        pathk.points=[pathk.points j];
                        paths=[paths pathk];
                    end
                    
                end
                
            end
            pc = paths;
            return ;
        end
end

function [z] = isConnected(i,j,w)
    if w(i,j) ~=0
        z=j;
    else
        z=-1;
    end
end