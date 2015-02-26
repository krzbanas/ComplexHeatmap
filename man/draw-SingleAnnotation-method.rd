\name{draw-SingleAnnotation-method}
\alias{draw,SingleAnnotation-method}
\title{
Draw the single annotation  


}
\description{
Draw the single annotation  


}
\usage{
\S4method{draw}{SingleAnnotation}(object, index)
}
\arguments{

  \item{object}{a \code{\link{SingleAnnotation}} object.}
  \item{index}{the index}

}
\details{
A viewport is created.  


}
\value{
No value is returned.  


}
\author{
Zuguang Gu <z.gu@dkfz.de>  


}
\examples{
anno = SingleAnnotation(name = "test", value = c("a", "a", "a", "b", "b", "b"))
draw(anno, 1:5)
draw(anno, c(1, 4, 3, 5, 2))

anno = SingleAnnotation(value = c("a", "a", "a", "b", "b", "b"), col = c("a" = "red", "b" = "blue"))
draw(anno, 1:5)
draw(anno, c(1, 4, 3, 5, 2))

anno = SingleAnnotation(value = c("a", "a", "a", "b", "b", "b"), col = c("a" = "red", "b" = "blue"), 
    which = "row")
draw(anno, 1:5)

anno = SingleAnnotation(value = 1:10)
draw(anno, 1:10)

anno = SingleAnnotation(value = 1:10, col = colorRamp2(c(1, 10), c("blue", "red")))
draw(anno, 1:10)

anno = SingleAnnotation(fun = anno_points(1:10))
draw(anno, 1:10)
}