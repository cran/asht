\name{wsrTest}
\alias{wsrTest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Exact Wilcoxon Signed Rank Test
}
\description{
Calculates the exact Wilcoxon signed rank test (using Pratt's method if there are zero values). Gives exact matching confidence intervals based on repeated calls to \code{\link[coin]{wilcoxsign_test}}.
}
\usage{
wsrTest(x, y = NULL, conf.int = TRUE, conf.level = 0.95, 
   mu = 0, alternative = c("two.sided", "less", "greater"),
   digits = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
numeric vector, either the difference (if y=NULL) or the first of the paired responses (so difference is x-y).
}
  \item{y}{
second of paired differences. If NULL assumes x is the vector of paired differences.
}
  \item{conf.int}{
logica, calculate confidence interval on median of differences
}
  \item{conf.level}{
confidence level
}
  \item{mu}{
null median difference
}
  \item{alternative}{
alternative hypothesis
}
  \item{digits}{
number of digits for accuracy of confidence intervals, results are accurate to round(ci,cidigits). If digits=NULL picks about 4 digits if the range of the differences is 0 to 1, with similar accuracy as the range changes (see details). 
}
}
\details{
This function calculate the exact Wilcoxon signed rank test using the Pratt method if there are zeros. In other words, rank the differences equal to zero together with the absolute value of the differences, but then permute the signs of only the non-zero ranks. The p-values are calculated using \code{\link[coin]{wilcoxsign_test}}, this function is just a wrapper to get confidence intervals. 
}
\value{
An object of class 'htest', list with elements:
\item{estimate}{Hodeges-Lehmann estimator of median difference}
\item{p.value}{p.value associated with alternative}
\item{conf.int}{confidence interval}
\item{null.value}{null median difference}
\item{alternative}{alternative}
\item{method}{description of method}
}
\references{
Pratt, JW (1959). Remarks on zeros and ties in the Wilcoxon signed rank procedures. JASA 54(287) 655-667.
}
\author{
Michael P. Fay
}
%\note{}

%% ~Make other sections like Warning  \section{Warning }{....} ~

\seealso{
\code{\link[coin]{wilcoxsign_test}}
}
\examples{
wsrTest((-3:8))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{htest}
