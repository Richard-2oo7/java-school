float lengte = 180;
float gewicht = 110;
float BMI = 0;

BMI = gewicht / (lengte * lengte) * 10000;
int afgerondeBMI = round(BMI);

print("Met een gewicht van " + gewicht);
print(" kg en een lengte van " + lengte);
print(" cm, is jouw BMI " + afgerondeBMI);
