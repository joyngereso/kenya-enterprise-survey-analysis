* Encoding: UTF-8.
ï»¿* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=a3a DISPLAY=LABEL
  /TABLE a3a [COUNT F40.0]
  /CATEGORIES VARIABLES=a3a ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CRITERIA CILEVEL=95.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=a3a DISPLAY=LABEL
  /TABLE a3a [COUNT F40.0]
  /CATEGORIES VARIABLES=a3a ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CRITERIA CILEVEL=95.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=a3a DISPLAY=LABEL
  /TABLE a3a [ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=a3a ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CRITERIA CILEVEL=95.

FREQUENCIES VARIABLES=a3a
  /NTILES=4
  /STATISTICS=STDDEV VARIANCE MEAN MEDIAN MODE SKEWNESS SESKEW KURTOSIS SEKURT
  /ORDER=ANALYSIS.

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=a3a COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: a3a=col(source(s), name("a3a"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  GUIDE: axis(dim(1), label("Region of The Establishment"))
  GUIDE: axis(dim(2), label("Count"))
  GUIDE: text.title(label("Simple Histogram Count of Region of The Establishment"))
  SCALE: cat(dim(1), include("1", "2", "3", "4", "5", "6"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(a3a*COUNT), shape.interior(shape.square))
END GPL.
* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=a3a COUNT()[name="COUNT"] MISSING=LISTWISE
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: a3a=col(source(s), name("a3a"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  GUIDE: axis(dim(1), label("Region of The Establishment"))
  GUIDE: axis(dim(2), label("Percent"))
  GUIDE: text.title(label("Simple Histogram Percent of Region of The Establishment"))
  SCALE: cat(dim(1), include("1", "2", "3", "4", "5", "6"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(summary.percent(a3a*COUNT, base.all(acrossPanels()))),
    shape.interior(shape.square))
END GPL.


* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=a3a MEAN(id)[name="MEAN_id"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: a3a=col(source(s), name("a3a"), unit.category())
  DATA: MEAN_id=col(source(s), name("MEAN_id"))
  GUIDE: axis(dim(1), label("Region of The Establishment"))
  GUIDE: axis(dim(2), label("Mean Firm ID"))
  GUIDE: text.title(label("Simple Histogram Mean of Firm ID by Region of The Establishment"))
  SCALE: cat(dim(1), include("1", "2", "3", "4", "5", "6"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(a3a*MEAN_id), shape.interior(shape.square))
END GPL.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=b7a a6a DISPLAY=LABEL
  /TABLE b7a > a6a [ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=b7a a6a ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CRITERIA CILEVEL=95.

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=a6a b7a MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: a6a=col(source(s), name("a6a"), unit.category())
  DATA: b7a=col(source(s), name("b7a"), unit.category())
  GUIDE: axis(dim(1), label("Sampling Size"))
  GUIDE: axis(dim(2), label("Is The Top Manager a Woman?"))
  GUIDE: text.title(label("Simple Histogram of Is The Top Manager a Woman? by Sampling Size"))
  SCALE: cat(dim(1), include("1", "2", "3"))
  SCALE: cat(dim(2), include("-9", "1", "2"))
  ELEMENT: interval(position(a6a*b7a), shape.interior(shape.square))
END GPL.
* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=a6a COUNT()[name="COUNT"] b7a MISSING=LISTWISE
    REPORTMISSING=NO DATAFILTER=b7a(VALUES=ALL UNLABELED=INCLUDE)
  /GRAPHSPEC SOURCE=INLINE
  /COLORCYCLE COLOR1(254,130,180), COLOR2(85,150,230), COLOR3(236,230,208), COLOR4(250,77,86),
    COLOR5(87,4,8), COLOR6(25,128,56), COLOR7(0,45,156), COLOR8(238,83,139), COLOR9(178,134,0),
    COLOR10(0,157,154), COLOR11(1,39,73), COLOR12(138,56,0), COLOR13(165,110,255),
    COLOR14(236,230,208), COLOR15(69,70,71), COLOR16(92,202,136), COLOR17(208,83,52),
    COLOR18(204,127,228), COLOR19(225,188,29), COLOR20(237,75,75), COLOR21(28,205,205),
    COLOR22(92,113,72), COLOR23(225,139,14), COLOR24(9,38,114), COLOR25(90,100,94), COLOR26(155,0,0),
    COLOR27(207,172,227), COLOR28(150,145,145), COLOR29(63,235,124), COLOR30(105,41,196)
  /FRAME OUTER=NO INNER=NO
  /GRIDLINES XAXIS=NO YAXIS=YES
  /STYLE GRADIENT=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: a6a=col(source(s), name("a6a"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  COORD: polar.theta(startAngle(0))
  GUIDE: axis(dim(1), null())
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("Sampling Size"))
  GUIDE: text.title(label("Pie Chart Percent of Sampling Size"))
  GUIDE: text.footnote(label("Filtered by Is The Top Manager a Woman? variable"))
  SCALE: linear(dim(1), dataMinimum(), dataMaximum())
  SCALE: cat(aesthetic(aesthetic.color.interior), include(
"1", "2", "3"))
  ELEMENT: interval.stack(position(summary.percent(summary.percent(COUNT,
    base.all(acrossPanels())))), color.interior(a6a))
END GPL.


CROSSTABS
  /TABLES=a6a BY b7
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=a6a BY b7a
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=a6a COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /COLORCYCLE COLOR1(254,130,180), COLOR2(85,150,230), COLOR3(236,230,208), COLOR4(250,77,86), 
    COLOR5(87,4,8), COLOR6(25,128,56), COLOR7(0,45,156), COLOR8(238,83,139), COLOR9(178,134,0), 
    COLOR10(0,157,154), COLOR11(1,39,73), COLOR12(138,56,0), COLOR13(165,110,255), 
    COLOR14(236,230,208), COLOR15(69,70,71), COLOR16(92,202,136), COLOR17(208,83,52), 
    COLOR18(204,127,228), COLOR19(225,188,29), COLOR20(237,75,75), COLOR21(28,205,205), 
    COLOR22(92,113,72), COLOR23(225,139,14), COLOR24(9,38,114), COLOR25(90,100,94), COLOR26(155,0,0), 
    COLOR27(207,172,227), COLOR28(150,145,145), COLOR29(63,235,124), COLOR30(105,41,196)
  /FRAME OUTER=NO INNER=NO
  /GRIDLINES XAXIS=NO YAXIS=YES
  /STYLE GRADIENT=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: a6a=col(source(s), name("a6a"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  COORD: polar.theta(startAngle(0))
  GUIDE: axis(dim(1), null())
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("Sampling Size"))
  GUIDE: text.title(label("Pie Chart Percent of Sampling Size"))
  GUIDE: text.footnote(label("Filtered by  variable"))
  SCALE: linear(dim(1), dataMinimum(), dataMaximum())
  SCALE: cat(aesthetic(aesthetic.color.interior), include(
"1", "2", "3"))
  ELEMENT: interval.stack(position(summary.percent(summary.percent(COUNT, 
    base.all(acrossPanels())))), color.interior(a6a))
END GPL.
*the distribution shows that small firms constitute the largest proportion of the sample, followed by medium firms while  large firms represent the smalest proportion.
*The cross tabulation shows that the female top  managers are underrepresented across all firm sizes, with their presence being relatively higher in small firms and progressively lower in medium and large firms.





CROSSTABS
  /TABLES=a6a BY k82a
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=b7a a6a DISPLAY=LABEL
  /TABLE b7a > a6a [ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=b7a a6a ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CRITERIA CILEVEL=95.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=k30 DISPLAY=LABEL
  /TABLE k30 [COUNT F40.0]
  /CATEGORIES VARIABLES=k30 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CRITERIA CILEVEL=95.

CROSSTABS
  /TABLES=a6a BY k30
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW TOTAL 
  /COUNT ROUND CELL.

DATASET ACTIVATE DataSet1.
* Define Variable Properties.
EXECUTE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=l10 DISPLAY=LABEL
  /TABLE l10 [ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=l10 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CRITERIA CILEVEL=95.


CROSSTABS
  /TABLES=a6a BY l10
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.
*Large firms are most likely to train their staff ,followed by medium firms .While small are less likely to train their staff.

COMPUTE women_perc=(l5 / l1*100).
EXECUTE.

DESCRIPTIVES VARIABLES=women_perc
  /STATISTICS=MEAN STDDEV MIN MAX.

FREQUENCIES VARIABLES=women_perc
  /STATISTICS=SKEWNESS SESKEW KURTOSIS SEKURT
  /HISTOGRAM
  /ORDER=ANALYSIS.

COMPUTE women_perc=(l5 / l1) * 100.
EXECUTE.

RECODE women_perc (0 thru 25=1) (26 thru 50=2) (51 thru 75=3) (76 thru 100=4) INTO perc_group.
EXECUTE.
EXECUTE.
EXECUTE.
RECODE women_perc (0 thru 25=1) (26 thru 50=2) (51 thru 75=3) (76 thru 100=4) INTO perc_group.
EXECUTE.
* Define Variable Properties.
*perc_group.
VALUE LABELS perc_group
  1.00 '0-25%'
  2.00 '26-50%'
  3.00 '51--75%'
  4.00 '76-100%'.
EXECUTE.


CROSSTABS
  /TABLES=a6a BY perc_group
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.


DATASET ACTIVATE DataSet1.
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=c6 DISPLAY=LABEL
  /TABLE c6 [COUNT F40.0]
  /CATEGORIES VARIABLES=c6 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CRITERIA CILEVEL=95.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=a4a DISPLAY=LABEL
  /TABLE a4a [COUNT F40.0]
  /CATEGORIES VARIABLES=a4a ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CRITERIA CILEVEL=95.

CROSSTABS
  /TABLES=a2 BY c6
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=a2 BY c6
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=c10 DISPLAY=LABEL
  /TABLE c10 [COUNT F40.0]
  /CATEGORIES VARIABLES=c10 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CRITERIA CILEVEL=95.

CROSSTABS
  /TABLES=a2 BY c10
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=a6a BY c10
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.

