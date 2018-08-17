dnd <- function(dice){
for(n in 1:length(dice)){
    nd=as.numeric(gsub("(.*)d(.*)","\\1",dice[n]))
    ds=as.numeric(gsub("(.*)d(.*)","\\2",dice[n]))
    rolls <- sample.int(ds,nd,replace = T)
    print(paste0(sum(rolls),": ",paste(rolls, collapse = " ")))
    }
}

Example usage:

dice <- c("5d5","3d2","7d10")

dnd(dice)
11: 2 1 1 4 3
3: 1 1 1
52: 2 9 6 8 8 10 9
