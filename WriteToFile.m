%%% This function generates the G-code file according to the nodal path 
% and feed rate data %%%

function WriteToFile(CellType,NodalPath,nx,ny,E0,E,nH,nV, ...
    nExtr,nL,lhD)

switch CellType
    case 'StretchDominatedDiamond'
        fileID = fopen('DiamondCellGcode.gcode','wt'); 
    case 'BendingDominatedHexagon'
        fileID = fopen('HexagonalCellGcode.gcode','wt'); 
end

% Initial house-keeping commands
fprintf(fileID,strcat(';FLAVOR:Marlin','\n',';TIME:6','\n',';Layer height: 2','\n',';MINX:10','\n',';MINY:0', ...
    '\n',';MINZ:2','\n',';MAXX:240','\n',';MAXY:230','\n',';MAXZ:2','\n','T1','\n','M140 S70','\n','M105','\n','M190 S70','\n','M105','\n','M82 ;absolute extrusion mode', ...
    '\n','G21 ;metric values','\n','M107','\n','G28','\n','M420 S1','\n','G90 ;absolute positioning','\n','G92 E0; reset extruder distance', ...
    '\n','G1 X0 Y0 Z10 F5000 ;move nozzle up 10mm for safe homing','\n','M500','\n','M82 ;set extruder to absolute mode', ...
    '\n','M107 ;start with the fan off','\n','G92 E0 ;zero the extruded length','\n','M117 Printing...','\n','G92 E0','\n','G92 E0' ...
    ,'\n',';LAYER_COUNT:1','\n',';LAYER:0','\n','M107','\n','\n','\n','\n','\n')); 

switch CellType
    case 'StretchDominatedDiamond'
        fprintf(fileID,strcat(';Coordinate data for diamond frame','\n'));
        NonExtrusionNodes=[1 6 6+nV*(nH-1)]; l=4;
        for m=1:(nH-2)
            NonExtrusionNodes(l)=6+m*nV; l=l+1;
        end
        for n=1:(nH-1)
            NonExtrusionNodes(l)=6+nV*(nH-1)+n*(5*nV+1); l=l+1;
        end
        for i=1:nL
            fprintf(fileID,strcat(';Layer',num2str(i), ...
                ' Z',num2str(2*i),'\n'));
            fprintf(fileID,strcat('G0',' F3600',' X20',' Y50',' Z',num2str(2*(i)),'\n'));
            k=(i-1)*nExtr+1;
            for j=1:size(NodalPath,1)
                if i==1 && j==1
                    fprintf(fileID,strcat('G1',' F420',' X',num2str(nx(NodalPath(j))),' Y',num2str(ny(NodalPath(j))),' E',num2str(E0),'\n')); 
                elseif j==1
                    fprintf(fileID,strcat('G1',' F420',' X',num2str(nx(NodalPath(j))),' Y',num2str(ny(NodalPath(j))),' E',num2str(E(k-1)+E0),'\n'));
                elseif ismember(j,NonExtrusionNodes)
                        fprintf(fileID,strcat('G0',' F3600', ...
                        ' X',num2str(nx(NodalPath(j))), ...
                        ' Y',num2str(ny(NodalPath(j))),'\n')); 
                else
                    fprintf(fileID,strcat('G1',' F420', ...
                        ' X',num2str(nx(NodalPath(j))), ...
                        ' Y',num2str(ny(NodalPath(j))), ...
                        ' E',num2str(E(k)),'\n')); k=k+1;
                end
            end 
            
            if i<nL % inter - layer drying time
                fprintf(fileID,strcat('\n','\n','\n','\n', ...
                    ';Interlayer time gap','\n','G0',' F3600', ...
                    ' X',num2str(nx(NodalPath(1))), ...
                    ' Y',num2str(ny(NodalPath(1))), ...
                    ' Z',num2str(2*(i+1)),'\n', ...
                    'G91','\n','G1',' Z200','\n','G4',' S300','\n', ...
                    'G1',' Z-200','\n','G90','\n','\n','\n','\n','\n'));
            end
        end
                              
    case 'BendingDominatedHexagon'
        fprintf(fileID,strcat(';Coordinate data for hexagonal frame ','\n'));
        for i=1:nL
            fprintf(fileID,strcat(';Layer',num2str(i), ...
                ' Z',num2str(2*i),'\n'));
            k=(i-1)*nExtr+1;
            fprintf(fileID,strcat('G0',' F3600',' X20',' Y50',' Z',num2str(2*(i)),'\n'));
           
            if mod(nH,2)==1
                for j=2:size(NodalPath,1)
                    fprintf(fileID,strcat('G1',' F420', ...
                        ' X',num2str(nx(NodalPath(j))), ...
                        ' Y',num2str(ny(NodalPath(j))), ...
                        ' E',num2str(E(k)),'\n')); k=k+1;
                end
            else
                for j=2:size(NodalPath,1)
                    fprintf(fileID,strcat('G1',' F420', ...
                        ' X',num2str(nx(NodalPath(j))), ...
                        ' Y',num2str(ny(NodalPath(j))), ...
                        ' E',num2str(E(k)),'\n')); k=k+1;
                end
            end
            
            if i<nL % inter - layer drying time
                fprintf(fileID,strcat('\n','\n','\n','\n', ...
                    ';Interlayer time gap','\n','G0',' F3600', ...
                    ' X',num2str(nx(NodalPath(1))), ...
                    ' Y',num2str(ny(NodalPath(1))), ...
                    ' Z',num2str(2*(i+1)),'\n', ...
                    'G91','\n','G1',' Z200','\n','G4',' S300','\n', ...
                    'G1',' Z-200','\n','G90','\n','\n','\n','\n','\n'));
            end
        end    
end

% Final house-keeping commands
fprintf(fileID,strcat('\n','\n','\n','\n','\n',';End GCode','\n','M140 S0 ;heated bed heater off (if you have it)', ...
    '\n','G91 ;relative positioning','\n','G28;move X/Y to min endstops, so the head is out of the way','\n','M84 ;steppers off', ...
    '\n','M107','\n','G90 ;absolute positioning','\n','M82 ;absolute extrusion mode','\n',';End of Gcode'));

fclose(fileID);

% Open G-code file using Ultimaker Cura
switch CellType
    case 'StretchDominatedDiamond'
        winopen('DiamondCellGcode.gcode'); 
    case 'BendingDominatedHexagon'
        winopen('HexagonalCellGcode.gcode');
end
end