% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stm.R
\name{stm}
\alias{stm}
\title{Smoothed Poisson Matrix Factorization}
\usage{
stm(X, K, init = "lee", maxiter = 100, tol = 1e-04,
  bmsm_control_l = list(), bmsm_control_f = list(),
  nug_control_l = list(), nug_control_f = list(), filter.number = 1,
  family = "DaubExPhase", ebpm_method = "point_gamma",
  ebpm_control_l = list(), ebpm_control_f = list(), smooth_f = TRUE,
  smooth_l = FALSE, rounding = FALSE, nugget = FALSE,
  printevery = 10, return_all = TRUE)
}
\arguments{
\item{filter.number, family:}{wavelet basis, see wavethresh pakcage for more details.}

\item{ebpm_method}{point_gamma or two_gamma}

\item{smooth_f, smooth_l:}{whether to get smooth estimate of loadings or factors.}

\item{X:}{count matrix}

\item{K:}{number of factors/ranks}

\item{init:}{initialization methods, 'lee','scd' from package NNLM, or 'uniform' randomly initialize; or provide init as a list with L_init and F_init.}

\item{maxiter:}{maximum iterations}

\item{tol:}{stop criteria}

\item{bmsm_control:}{control parameters of BMSM, see bmsm_control_default()}

\item{ebpm_control:}{control parameters of ebpm, see ebpm_control_default()}

\item{nug_control}{control parameters of smashgen, see nug_control_default()}

\item{rounding:}{whether to round Z after each iteration.}
}
\value{
ql,qf: posterior of loadings and factors

Lambda: estimated lambda; init: initial values

KL: mean KL of lambda and estimated lambda
}
\description{
Smoothed Poisson Matrix Factorization
}
