
omega <-
  function(form, thetas, ip, pa, options) {
    #start internal function
    
    key <- c()
    for (i in 1:ncol(data)) {
      key[i] = options[which.max(ip[i, 1:r])]
    }
    
    theta.est1 <- thetas[pa[1]]
    
    obs.match <-
      length(which(form[pa[1], ] == form[pa[2], ]))
    
    probabilities <- irtprob(ability = theta.est1, item.param = ip)
    
    colnames(probabilities) <- options
    row.names <-
      c("Item 1")
    for (i in 2:ncol(form)) {
      row.names <- c(row.names, paste("Item ", i, sep = ""))
    }
    rownames(probabilities) <- row.names
    
    miss.items <- which(form[pa[2], ] == "NA")
    if (length(miss.items) == 0) {
      miss.items <- which(is.na(form[pa[2],]) == TRUE)
    }
    
    for (i in miss.items) {
      form[pa[2], i] = options[which(options != key[i])][which.max(probabilities[i, which(options != key[i])])]
    }
    
    pvec <- c()
    for (i in 1:ncol(form)) {
      pvec[i] = probabilities[i, which(options == form[pa[2], i])]
    }
    
    exp.match <- sum(pvec)
    sd.match  <- sqrt(sum(pvec * (1 - pvec)))
    
    w.value <- (obs.match - exp.match) / sd.match
    p.value <- pnorm(w.value, 0, 1, lower.tail = FALSE)
    
    return(
      list(
        exp.match = exp.match,
        obs.match = obs.match,
        sd.match = sd.match,
        W.value = w.value,
        p.value = p.value
      )
    )
  }#end internal function

