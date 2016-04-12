#########################################################################
##                                                                     ##
##   Artifacts for "Polymorphic Type Inference for Machine Code"       ##
##                                                                     ##
##        (c) GrammaTech, Inc. 2016                                    ##
##                                                                     ##
#########################################################################

* Structure of this directory

  This directory contains raw dumps of the PDB information (Windows debugging) for
  42 binaries used internally at GrammaTech for nightly tests.  The PDBs were
  processed with the utility dia2dump, and the outputs stored in the dia2dump/
  directory.  This serves as the ground truth input to the comparison.

  The manifest file indicates the benchmark names, along with some metadata that
  was used to extract the benchmarks from our internal testing system.
  
  The benchmark data sets are derived from log files emitted during type inference.
  These log files (three per benchmark) are found in the data/ directory.  The
  .decls file determines a map from type ids (integers) to types, using a
  straightforward textual representation of TIE types.

  The .map file indirectly determines the map from program variables to types.
  Procedures are marked by indentation level. Within each procedure are program
  points (offsets into the file, next indentation level) and then pairs of the
  form "location typeID" (third indentation level).  The pairs only show where a
  type has changed relative to the previous program point; to find the type of
  a variable at a given point, you must scan back from the point towards procedure
  entry until a type assignment to that variable is found.

* Processing the dia2dump files

  The dia2dump files must be parsed to extract locations and TIE-style types
  for the comparison phase.  The read_dia2dump.py script converts a .dia2dump file
  into a .debuginfo file, with information similar to the .decls and .map files
  mentioned above.  The make_debuginfo.py script runs read_dia2dump.py on each
  file in dia2dump/, storing the results in /debuginfo.

* Checking one benchmark against the baseline

  To see how Retypd performed on foo.exe, run the command "check foo.exe".  This
  runs the compare.py script, which emits information about how TIE distance,
  TIE interval size, conservativeness, and SecondWrite-style pointer accuracy.
  These metrics are measured jointly over the entire binary, and also in categories:
  globals, locals, parameters, and return types.  Return types do not appear to be
  uniformly used in PDB files, so many ground truth baselines are missing this
  category.

  This script also emits a single CSV entry encoding the same statistics.

* Checking all benchmarks at once

  The script make_csv.py runs "check foo.exe" for each file foo.exe listed in the
  manifest and collects the results into a single CSV table called data.csv. It
  also prints an overall average of the collected statistics, computed two ways:
  over the set of benchmarks and over the set of type variables, individually.

* Similarities and differences with the claims of the paper

  Due to IP issues, we were not able to extract the components of our internal test
  framework that computed the metrics shown in the preprint. This framework used
  IdaPro's debug format parsing to gather ground truth.  Here, we re-implemented
  the metrics from scratch, working directly from dumps of the PDB files.  Time
  did not permit us to complete a DWARF-to-dump component, so the DWARF-based
  benchmarks (including coreutils and the SPEC2006 benchmarks) are not represented
  in these metrics.

  Since the benchmarks used here are a subset of the full benchmarks, and since the
  metric calculations use a different implementation, there are slight changes from
  the statistics measured in the preprint. We do not believe that these differences
  are significant.  A short summary follows:

    +------------------------+-------------------+----------------------------+
    | METRIC                 | CLAIM IN PREPRINT | COMPUTED FROM THIS PACKAGE |
    +------------------------+-------------------+----------------------------+
    | TIE Distance           | 0.54              | 0.475                      |
    | Interval size          | 1.2               | 1.06                       |
    | Conservativeness       | 95%               | 93.9%                      |
    | Pointer accuracy       | 88%               | 90.3%                      |
    +------------------------+-------------------+----------------------------+

  These metrics are close to those reported in the preprint: the scale of TIE
  distance and interval size are both 0 to 4, with 0 being the best. Conservativeness
  and pointer accuracy are percentages, with 100% being the best.

  Although the results are slightly different, they are a mixed bag of improvements
  and regressions, and all results are close to the reported values.

* Can't run the artifact?

  This artifact requires a Python interpreter and basic Unix utilities to be installed;
  it probably won't work unmodified on Windows except through cygwin.  The prebuilt/
  subdirectory contains all of the generated output mentioned above; in particular, the
  final data.csv file.  See the last four entries of the second-to-last line for the
  metrics listed in the table above, or check the make_csv.log file's contents.
