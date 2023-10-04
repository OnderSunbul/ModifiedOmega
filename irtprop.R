
irtprob <- function(ability, item.param) {
  prob <- matrix(nrow = nrow(item.param),
                 ncol = ncol(item.param) / 2)
  
  for (i in 1:nrow(prob)) {
    ps <- c()
    for (j in 1:ncol(prob)) {
      ps[j] = exp((item.param[i, j] * ability) + item.param[i, j + ncol(prob)])
    }
    prob[i, ] = ps / sum(ps)
  }
  prob
}

