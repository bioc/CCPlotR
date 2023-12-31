% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cc_circos.R
\name{cc_circos}
\alias{cc_circos}
\title{Circos Plot Function}
\usage{
cc_circos(
  cc_df,
  option = "A",
  n_top_ints = 15,
  exp_df = NULL,
  cell_cols = NULL,
  palette = "BuPu",
  cex = 1,
  show_legend = TRUE,
  scale = FALSE,
  ...
)
}
\arguments{
\item{cc_df}{A dataframe with columns 'source', 'target', 'ligand', 'receptor' and 'score'. See \code{toy_data} for example.}

\item{option}{Either 'A' , 'B' or 'C'. Option A will plot the number of interactions between pairs of cell types, option B will plot the top \code{n_top_ints} interactions and their scores. Option C will plot the top \code{n_top_ints} interactions, their scores and the mean expression of the ligands/receptors in the sending/receiver cell types.}

\item{n_top_ints}{The number of top interactions to plot. Only required for options B and C.}

\item{exp_df}{A dataframe containing the mean expression values for each ligand/receptor in each cell type. See \code{toy_exp} for an example. Only required for option C.}

\item{cell_cols}{A named vector of colours for each cell type. Default uses \code{paletteMartin()}, a colourblind-friendly palette.}

\item{palette}{Which colour palette to use to show the mean expression. Should be one of the RColorBrewer sequential palettes.}

\item{cex}{Determines text size}

\item{show_legend}{TRUE or FALSE - whether to add legend or not. Only required for options B and C.}

\item{scale}{TRUE or FALSE - whether to scale each sector to same width. Only required for options B and C.}

\item{...}{Additional parameters passed to \code{chordDiagram} function.}
}
\value{
Returns a chord diagram generated by the circlize R package
}
\description{
This function creates a circos plot
}
\examples{
data(toy_data, toy_exp, package = 'CCPlotR')
cc_circos(toy_data)
cc_circos(toy_data, option = "B", n_top_ints = 10, cex = 0.5)
cc_circos(toy_data,
    option = "C", n_top_ints = 15, exp_df = toy_exp,
    cell_cols = c(`B` = "hotpink", `NK` = "orange", `CD8 T` = "cornflowerblue"),
    palette = "PuRd", cex = 0.5
)
}
