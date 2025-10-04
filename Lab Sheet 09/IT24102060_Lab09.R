setwd("C:\\Users\\HP.DESKTOP-HMVTQ0R\\Desktop\\IT24102060")

#1
bake <- rnorm(25, mean=45, sd=2)
bake

#2
t.test(bake, mu =46, alternative = "less")