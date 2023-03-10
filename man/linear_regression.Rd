% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{linear_regression}
\alias{linear_regression}
\title{Evaluate a squared-loss linear regression at a given parameter value}
\usage{
linear_regression(X, y, theta_hat, initial_lr = 1e-04, max_iter = 100L,
  tol = 1e-07)
}
\arguments{
\item{X}{Matrix with independent explanatory variables}

\item{y}{Vector with dependent variable}

\item{theta_hat}{Vector with initial \sQuote{guess} of parameter values}

\item{initial_lr}{[Optional] Scalar with initial step-size value,
default is 1e-4}

\item{max_iter}{[Optional] Scalar with maximum number of iterations,
default is 100}

\item{tol}{[Optional] Scalar with convergence tolerance, default is 1e-7}
}
\value{
A list object with the \sQuote{loss}, \sQuote{theta} (parameters),
\sQuote{gradient} and \sQuote{iter} for iterations
}
\description{
Not that this function does not actually fit the model. Rather it evaluates
the squared sum of residuals and \sQuote{gradient} of parameters.
}
\examples{
data(trees)   # also used in help(lm)
X <- as.matrix(cbind(const=1, trees[, c("Girth", "Height")]))
y <- trees$Volume
linear_regression(X, y, rep(0, 3), tol=1e-12)
coef(lm(y ~ X - 1))  # for comparison
}
