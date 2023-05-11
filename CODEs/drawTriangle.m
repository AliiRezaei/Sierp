function drawTriangle(s,c,n)

    % this function draw a simple "equilateral triangle".
    % inputs : 
    % s --> side length , c --> center position , n --> depth
    % s : scalar , c : vector [x, y]' , n : scalar
    % Note: The third argument (n) is to check the recursion condition.
    
    if n == 0
        h = sqrt(3) / 2 * s; % height of triangle
    
        x1 = c(1) - s / 2;
        y1 = c(2) - h / 2;

        x2 = c(1);
        y2 = c(2) + h / 2;

        x3 = c(1) + s / 2;
        y3 = c(2) - h / 2;

        X = [x1, x2, x3, x1]';
        Y = [y1, y2, y3, y1]';
        plot(X,Y)
    else
        % recursive case :
        s = s / 2;
        height = sqrt(3) / 2 * s; % height of triangle 
        blCenter = [c(1) - s / 2, c(2) - height / 2]'; % bottom left center
        brCenter = [c(1) + s / 2, c(2) - height /2]'; % bottom right center
        topCenter = [c(1), c(2) + height / 2]'; % top middle center
        drawTriangle(s,blCenter,n-1);
        drawTriangle(s,brCenter,n-1);
        drawTriangle(s,topCenter,n-1);
    end

end