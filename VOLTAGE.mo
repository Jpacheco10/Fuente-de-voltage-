package VOLTAGE
  connector Pinpos
  Modelica.SIunits.Voltage v "Electric Potential";
    flow Modelica.SIunits.Current i "Current Flow";
    annotation(
      Icon(graphics = {Ellipse(origin = {9, -1}, fillColor = {85, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-89, 79}, {89, -79}}, endAngle = 360)}));
  end Pinpos;

  connector pinneg
  Modelica.SIunits.Voltage v "Electric Potential";
    flow Modelica.SIunits.Current i "Current Flow";
    annotation(
      Icon(graphics = {Ellipse(origin = {2, 1}, fillColor = {85, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-94, 91}, {94, -91}}, endAngle = 360)}));
  end pinneg;

  partial model pines
    VOLTAGE.pinneg pinneg1 annotation(
      Placement(visible = true, transformation(origin = {82, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {86, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  VOLTAGE.Pinpos pinpos1 annotation(
      Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-82, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.SIunits.Voltage v;
  Modelica.SIunits.Current i;
    Ejercicio_Agosto28.Connectors.PositivePin p annotation(
      Placement(visible = true, transformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Ejercicio_Agosto28.Connectors.NegativePin n annotation(
      Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
  v = p.v - n.v;
  0 = p.i + n.i;
  i = p.i;
    annotation(
      Icon(graphics = {Rectangle(origin = {1, 20}, extent = {{-73, 4}, {75, -44}})}));
  end pines;
end VOLTAGE;
