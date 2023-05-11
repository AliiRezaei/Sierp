function Sierpinski(n,SideLength,Center)

    % draw sierpinski triangle using recursive alghoritim.
    % inputs : 
    % n --> depth
    % SideLength --> main triangle side length
    % Center : center of main triangle [x, y]'
    
    if nargin == 1
        % default values :
        SideLength = 1;
        Center = [0, 0]';
    end
    if n < 0 || SideLength <= 0
       error('first and second input arguments must be a positive integer') 
    end

    minX = Center(1) - SideLength / 2;
    maxX = Center(1) + SideLength / 2;
    minY = Center(2) - SideLength / 2;
    maxY = Center(2) + SideLength / 2;
    axis([minX, maxX, minY, maxY],'equal');
    tit = sprintf('The sierpinski fractal triangle \n with depth = %d',n);
    title(tit)
    hold on
    drawTriangle(SideLength,Center,n);
    hold off
    
end % end of Sierpinski
