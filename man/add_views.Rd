% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/view-composers.R
\name{add_views}
\alias{add_views}
\title{Add custom views to the current view composition}
\usage{
add_views(current.views, new.views)
}
\arguments{
\item{current.views}{the current view composition.}

\item{new.views}{a view or a list of views created with
\code{\link{create_view}()} or otherwise.}
}
\value{
A mistyR view composition containing an union of views from
    \code{current.views} and \code{new.views}.
}
\description{
Add one or more custom views to the current view composition.
}
\examples{

# create random views
view1 <- data.frame(marker1 = rnorm(100, 10, 2), marker2 = rnorm(100, 15, 3))
view2 <- data.frame(marker1 = rnorm(100, 10, 5), marker2 = rnorm(100, 15, 5))

misty.views <- create_initial_view(view1)

new.view <- create_view("dummyname", view2)
add_views(misty.views, new.view)

misty.views \%>\% add_views(create_view("dummyname", view2))
}
\seealso{
\code{\link{create_initial_view}()} for
    starting a view composition, with an intraview,
    \code{\link{create_view}()} for creating a custom view.

Other view composition functions: 
\code{\link{add_juxtaview}()},
\code{\link{add_paraview}()},
\code{\link{create_initial_view}()},
\code{\link{create_view}()},
\code{\link{remove_views}()}
}
\concept{view composition functions}
