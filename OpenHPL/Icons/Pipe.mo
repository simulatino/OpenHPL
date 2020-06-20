within OpenHPL.Icons;
partial class Pipe "Pipe icon"
  parameter Boolean vertical=false "Display vertical icon instead"
    annotation(Dialog(group = "Icon"),
    choices(checkBox = true));
   annotation (
    Icon(coordinateSystem(preserveAspectRatio = false, grid = {1, 1}, initialScale = 0.1), graphics = {Rectangle(origin = {3, 5.5}, fillColor = {175, 175, 175}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-66, 25.5}, {64, -24.5}}), Ellipse(origin = {-66.5, 6}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, extent = {{-12.5, 26}, {12.5, -26}}, endAngle = 360), Ellipse(origin = {-69.5, 12}, fillColor = {0, 128, 255}, fillPattern = FillPattern.Solid, extent = {{-6.5, 15}, {12.5, -26}}, endAngle = 360), Ellipse(origin = {60.5, 9}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, extent = {{1.5, 23}, {13.5, -28}}, endAngle = 360), Ellipse(origin = {59.5, 17}, fillColor = {0, 128, 255}, fillPattern = FillPattern.Solid, extent = {{5.5, 10}, {13.5, -31}}, endAngle = 360), Text(origin = {-3, -18}, lineColor = {28, 108, 200}, extent = {{-150, 100}, {150, 60}}, textString = "%name", textStyle = {TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold, TextStyle.Bold})}));
end Pipe;
