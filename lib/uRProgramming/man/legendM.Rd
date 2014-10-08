\name{legendM}
\alias{legendM}
\title{Add Legends to Plots}
\usage{
legendM(x, y = NULL, legend, fill = NULL, col = "black", lty, lwd, pch,
       angle = NULL, density = NULL, bty = "o", bg = par("bg"),
       pt.bg = NA, cex = 1, xjust = 0, yjust = 1,
       x.intersp = 1, y.intersp = 1, adj = c(0, 0.5),
       text.width = NULL, text.col = par("col"),
       merge = do.lines && has.pch, trace = FALSE,
       plot = TRUE, ncol = 1, horiz = FALSE)
}
\description{
  This function can be used to add legends to plots.  Note that a call
  to the function \code{\link{locator}} can be used in place of the \code{x}
  and \code{y} arguments.
  This function modified by Zekai Otles from original legend function
}
\arguments{
  \item{x, y}{the x and y co-ordinates to be used to position the legend.
    They can be specified in any way which is accepted by
    \code{\link{xy.coords}}: See Details.}
  \item{legend}{a vector of text values or an \code{\link{expression}}
    of length \eqn{\ge 1}{>= 1}, or a \code{\link{call}} (as resulting
    from \code{\link{substitute}}) to appear in the legend.}
  \item{fill}{if specified, this argument will cause boxes filled
    with the specified colors (or shaded in the specified colors)
    to appear beside the legend text.}
  \item{col}{the color of points or lines appearing in the legend.}
  \item{lty,lwd}{the line types and widths for lines appearing in the
    legend.  One of these two \emph{must} be specified for line drawing.}
  \item{pch}{the plotting symbols appearing in the legend, either as
    vector of 1-character strings, or one (multi character)
    string. \emph{Must} be specified for symbol drawing.}
  \item{angle}{angle of shading lines.}
  \item{density}{the density of shading lines, if numeric and
    positive. If \code{NULL} or negative or \code{NA} color filling
    is assumed.}
  \item{bty}{the type of box to be drawn around the legend.  The allowed
    values are \code{"o"} (the default) and \code{"n"}.}
  \item{bg}{the background color for the legend box.  (Note that this is
    only used if \code{bty != "n"}.)}
  \item{pt.bg}{the background color for the \code{\link{points}}.}
  \item{cex}{character expansion factor \bold{relative} to current
    \code{par("cex")}.}
  \item{xjust}{how the legend is to be justified relative to the legend
    x location.  A value of 0 means left justified, 0.5 means centered
    and 1 means right justified.}
  \item{yjust}{the same as \code{xjust} for the legend y location.}
  \item{x.intersp}{character interspacing factor for horizontal (x) spacing.}
  \item{y.intersp}{the same for vertical (y) line distances.}
  \item{adj}{numeric of length 1 or 2; the string adjustment for legend
      text.  Useful for y-adjustment when \code{labels} are
      \link{plotmath} expressions.}
  \item{text.width}{the width of the legend text in x (\code{"user"})
    coordinates.
    Defaults to the proper value computed by \code{\link{strwidth}(legend)}.}
  \item{text.col}{the color used for the legend text.}
  \item{merge}{logical; if \code{TRUE}, \dQuote{merge} points and lines but
    not filled boxes.  Defaults to \code{TRUE} if there are points and lines.}
  \item{trace}{logical; if \code{TRUE}, shows how \code{legend} does all
    its magical computations.}
  \item{plot}{logical.  If \code{FALSE}, nothing is plotted but the
    sizes are returned.}
  \item{ncol}{the number of columns in which to set the legend items
    (default is 1, a vertical legend).}
  \item{horiz}{logical; if \code{TRUE}, set the legend horizontally rather than
     vertically (specifying \code{horiz} overrides the \code{ncol}
     specification).}
}
\details{
  Arguments \code{x, y, legend} are interpreted in a non-standard way to
  allow the coordinates to be specified \emph{via} one or two arguments.
  If \code{legend} is missing and \code{y} is not numeric, it is assumed
  that the second argument is intended to be \code{legend} and that the
  first argument specifies the coordinates.

  The coordinates can be specified in any way which is accepted by
  \code{\link{xy.coords}}.  If this gives the coordinates of one point,
  it is used as the top-left coordinate of the rectangle containing the
  legend.  If it gives the coordinates of two points, these specify
  opposite corners of the rectangle (either pair of corners, in any
  order).

  \dQuote{Attribute} arguments such as \code{col}, \code{pch}, \code{lty},
  etc, are recycled if necessary.  \code{merge} is not.

  Points are drawn \emph{after} lines in order that they can cover the
  line with their background color \code{pt.bg}, if applicable.

  See the examples for how to right-justify labels.
}
\value{
  A list with list components
  \item{rect}{a list with components
    \describe{
      \item{\code{w, h}}{positive numbers giving \bold{w}idth and
	\bold{h}eight of the legend's box.}
      \item{\code{left, top}}{x and y coordinates of upper left corner
	of the box.}
    }
  }
  \item{text}{a list with components
    \describe{
      \item{\code{x, y}}{numeric vectors of length \code{length(legend)},
	giving the x and y coordinates of the legend's text(s).}
    }
  }
  returned invisibly.
}
\references{
  Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988)
  \emph{The New S Language}.
  Wadsworth \& Brooks/Cole.
}
\seealso{
  \code{\link{plot}}, \code{\link{barplot}} which uses \code{\link{legend}}, and
  \code{\link{text}} for more examples of math expressions.
}
\examples{
Matrix is one dimensional matrix multiple columns
shMatrix  colName1 colName2 colName3 ...
           val1    val2     val3     ...


barplot(shMatrix,beside=TRUE,ylim=c(0,100),ylab=ylab,xlab=xlab)

legendM(1,100,colnames(shMatx))

}
\keyword{legend}
