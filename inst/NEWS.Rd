% Check from R:
%  news(db = tools:::.build_news_db_from_package_NEWS_Rd("~/R/Pkgs/Matrix/inst/NEWS.Rd"))
\name{NEWS}
\title{News for \R Package \pkg{asht}}
\encoding{UTF-8}
\newcommand{\CRANpkg}{\href{http://CRAN.R-project.org/package=#1}{\pkg{#1}}}
%% NB: The date (yyyy-mm-dd) is the "Packaged:" date in ../DESCRIPTION

\section{Version 0.6 (2016-05-04)}{
 \subsection{Changes}{
  \itemize{
   \item Modified \code{wspoissonTest} to be calculated using uniroot by default, instead of by Monte Carlo simulation.
  }
 } 
}


\section{Version 0.5 (2015-06-26)}{
   First CRAN release of \pkg{asht}, \dQuote{Applied Statistical Hypothesis Tests} by Michael P. Fay (author, maintainer).
  \subsection{Tests}{
    \itemize{
      \item    \code{signTest} gives exact sign test with confidence intervals
      \item \code{cvTest} gives coefficient of variance tests based on normality or lognormal assumptions
     \item \code{quantileTest} and \code{medianTest} give exact tests on a quantile (including median). No assumptions on the distribution are needed (ordered factors are allowed). 
     \item \code{var1Test} gives one-sample test of normal variance. 
    \item \code{wsrTest} gives exact Wilcoxon signed rank test, gives exact matching confidence intervals.
    \item \code{wspoissonTest} gives confidence intervals for weighted sums of Poisson, useful for directly standardized rates.      
    }
  }
}
