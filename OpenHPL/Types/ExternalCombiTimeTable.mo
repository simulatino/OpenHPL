within OpenHPL.Types;
class ExternalCombiTimeTable "External object of 1-dim. table where first column is time"
  extends ExternalObject;

  function constructor "Initialize 1-dim. table where first column is time"
    extends Modelica.Icons.Function;
    input String tableName "Table name";
    input String fileName "File name";
    input Real table[:, :];
    input Modelica.SIunits.Time startTime;
    input Integer columns[:];
    input Modelica.Blocks.Types.Smoothness smoothness;
    input Modelica.Blocks.Types.Extrapolation extrapolation;
    input Modelica.SIunits.Time shiftTime=0.0;
    input Modelica.Blocks.Types.TimeEvents timeEvents=Modelica.Blocks.Types.TimeEvents.Always;
    input Boolean verboseRead=true "= true: Print info message; = false: No info message";
    input String delimiter="," "Column delimiter character for CSV file";
    input Integer nHeaderLines=0 "Number of header lines to ignore for CSV file";
    output ExternalCombiTimeTable externalCombiTimeTable;
  external"C" externalCombiTimeTable = ModelicaTableAdditions_CombiTimeTable_init3(
          fileName,
          tableName,
          table,
          size(table, 1),
          size(table, 2),
          startTime,
          columns,
          size(columns, 1),
          smoothness,
          extrapolation,
          shiftTime,
          timeEvents,
          verboseRead,
          delimiter,
          nHeaderLines) annotation (LibraryDirectory="modelica://OpenHPL/Resources/Library",                Library={"ModelicaTableAdditions", "ModelicaIOAdditions", "ModelicaMatIO", "zlib"});
  end constructor;

  function destructor "Terminate 1-dim. table where first column is time"
    extends Modelica.Icons.Function;
    input ExternalCombiTimeTable externalCombiTimeTable;
  external"C" ModelicaTableAdditions_CombiTimeTable_close(
      externalCombiTimeTable) annotation (LibraryDirectory="modelica://Modelica/Resources/Library", Library={"ModelicaTableAdditions", "ModelicaIOAdditions", "ModelicaMatIO", "zlib"});
  end destructor;

end ExternalCombiTimeTable;
