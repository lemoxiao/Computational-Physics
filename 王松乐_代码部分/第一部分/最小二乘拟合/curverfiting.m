A=[ 1     2     3     4     5];
B=[    0.2339    0.3812    0.5759    0.8153    0.9742];
%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( A, B );

% Set up fittype and options.
ft = fittype( 'poly1' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'B vs. A', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel A
ylabel B
grid on


