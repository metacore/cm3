INTERFACE Statistic;
(*Copyright (c) 1996, m3na project

Abstract: Statistics routines

3/16/96  Harry George    Initial version
*)
FROM NADefinitions IMPORT Error;
IMPORT LongRealBasic AS R;

(*==========================*)
TYPE
  T = RECORD
        min,  (*minimum*)
        max,  (*maximum*)
        avg,  (*average*)
        adev, (*average deviation*)
        sdev, (*standard deviation*)
        var,  (*variance*)
        skew, (*skew*)
        kurt  (*kurtosis*)
        :R.T;
      END;

PROCEDURE Describe(data:R.Array;
                  VAR (*OUT*) r:T) RAISES {Error};
(*Note: IF var < TINY, then skew and kurt are meaningless*)

PROCEDURE TTest(data1,data2:R.Array;
                VAR t,    (*Student's t-test*)
                    prob  (*probability of insignificance*)
                    :R.T) RAISES {Error};
(*Do Student's t test.
Find t, which shows how close the means are, and
find prob, which is small if this similarity is unlikely to
be due to chance.  Note that their variances need to be
similar.*)

PROCEDURE FTest(data1,data2:R.Array;
            VAR f,    (*F value*)
                prob  (*probability of significance*)
                :R.T) RAISES {Error};
(*do F-test, returning F and the probability that
a difference between vars is due to chance*)

PROCEDURE ChiSqr1
               (bins:R.Array;     (*actual bin counts*)
                ebins:R.Array;     (*expected bin counts*)
                constraints:CARDINAL:=1;
                VAR df:R.T;    (*degrees of freedom*)
                VAR chsq:R.T;  (*chi squared*)
                VAR prob:R.T   (*probability of significance*)
                ) RAISES {Error};
(*bins has an integer number of events in each bin, ebins
has the expected number in each bin (possibly non integer),
contraints gives the constraint count which reduces the
df from the number of bins.  chsq then is a measure of the
difference in the bin-by-bin numbers, while prob gives the
significance of that measure.  Big chsq means big difference,
big prob means big chance this large chsq came from pure random
events.

requires: count in each bin >=5
*)

PROCEDURE ChiSqr2
               (bins1:R.Array;    (*actual bin1 counts*)
                bins2:R.Array;    (*actual bin2 counts*)
                constraints:CARDINAL:=1;
                VAR df:R.T;    (*degrees of freedom*)
                VAR chsq:R.T;  (*chi squared*)
                VAR prob:R.T   (*probability of significance*)
                ) RAISES {Error};
(*bins1 and bins2 have an integer number of events in each bin,
contraints gives the constraint count which reduces the
df from the number of bins.  chsq then is a measure of the
difference in the bin-by-bin numbers, while prob gives the
significance of that measure.  Big chsq means big difference,
big prob means big chance this large chsq came from pure random
events.

requires: count in each bin >=5
*)

(*==========================*)
END Statistic.
