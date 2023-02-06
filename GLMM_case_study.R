## PARAMETRIC GLMM applied to case study
## Outputs are saved into df_level2_pred.csv

#__________________
## Libraries import
library(nlme)
library(lme4)
library(lattice)
library(dplyr)
library(readr)

#__________________
## Dataframe import
df <- read_csv("data/df_level2.csv") 


#_________________
## A) POISSON response

# fit the model without fixed intercept
modPoi = glmer(Y_MATH ~ -1 + (1 | CNT) + scale(mean_ESCS_std) + scale(SCHSIZE), 
             data = df,
             family = poisson(link = "log"))

summary(modPoi)

df$pred_GLMM_Poi <- predict(modPoi, df, type="response")

for(i in sort(as.vector(ranef(modPoi)$CNT$`(Intercept)`))){
  print(i)
}

# Comparison with SPGLMM - 0.10
# cl1 = c(-0.6637204)
# cl2 = c(-0.009361374, 0.06354283, 0.09452822)
# cl3 = c(0.1802348)
# cl4 = c(0.2293667, 0.3190011, 0.3306704, 0.355101, 0.3996913)
# cl5 = c(0.4477434)
# cl6 = c(0.5388644, 0.5619767, 0.5877496)
# cl7 = c(0.611759, 0.6459514, 0.6499074, 0.6519647, 0.6694407, 0.7425767)
# cl8 = c(0.8123168, 0.8304315)
# cl9 = c(0.9129981, 0.9282129)
# cl10 = c(1.038195)
# cl11 = c(1.090903, 1.096447, 1.117065, 1.128946, 1.151037, 1.163918)
# cl12 = c(1.204267, 1.206962, 1.211373, 1.223169, 1.232676)
# cl13 = c(1.292723, 1.300559)
# cl14 = c(1.363591, 1.382112, 1.391345)
# cl15 = c(1.469199, 1.492546)
# cl16 = c(1.592016, 1.646719, 1.672995, 1.715485)
# cl17 = c(1.886058, 1.951902)
# cl18 = c(2.264779)
# mean(cl17)
# median(cl17)

rr1 <- ranef(modPoi)
dd <- as.data.frame(rr1)
if (require(ggplot2)) {
  ggplot(dd, aes(y=grp,x=condval)) +
    geom_point() + facet_wrap(~term,scales="free_x") +
    geom_errorbarh(aes(xmin=condval -2*condsd,
                       xmax=condval +2*condsd), height=0) + 
    theme_bw() + xlab("") + ylab('') +
    ggtitle("Poisson response")
}

ggsave(filename = 'ran_int_Poi.pdf',
       plot = last_plot(),
       device = NULL,
       scale = 1,
       width = 4.5,
       height = 6,
       units = "in",
       dpi = 300,
       limitsize = TRUE,
       bg = NULL)



#_________________
## B) BERNOULLI response

# fit the model without fixed intercept
modBer = glmer(Y_BIN_MATH ~ -1 + (1 | CNT) + scale(SCHSIZE) + scale(mean_ESCS_std), 
             data = df,
             family = binomial(link = "logit"))
summary(modBer)
df$pred_GLMM_Ber <- predict(modBer, df, type="response")


for(i in sort(as.vector(ranef(modBer)$CNT$`(Intercept)`))){
  print(i)
}

# Comparison with SPGLMM - 0.10
# cl1 = c(-3.415181)
# cl2 = c(-2.850339, -2.728251, -2.580062, -2.555669, -2.459209)
# cl3 = c(-2.249702, -2.192072, -2.07657, -1.909449, -1.889586, -1.859599)
# cl4 = c(-1.630777, -1.577379, -1.560625, -1.478611)
# cl5 = c(-1.213728, -1.136315, -1.020824, -0.9762979, -0.9566202, -0.8025527, -0.5742199)
# cl6 = c(-0.5479114, -0.3919152)
# cl7 = c(-0.1027254, -0.09072938, 0.1323335)
# cl8 = c(0.1938825, 0.2918777, 0.4482877, 0.473373, 0.4955949, 0.4995587, 0.5146097, 0.5154467, 0.6047943)
# cl9 = c(0.8461147, 1.007735, 1.027267, 1.100976, 1.294551, 1.355183, 1.504317)
# cl10 = c(1.687466, 1.83161, 2.053708, 2.145012, 2.173451, 2.450684)
# mean(cl3)
# std(cl3)
  
rr1 <- ranef(modBer)
dd <- as.data.frame(rr1)
if (require(ggplot2)) {
  ggplot(dd, aes(y=grp,x=condval)) +
    geom_point() + facet_wrap(~term,scales="free_x") +
    geom_errorbarh(aes(xmin=condval -2*condsd,
                       xmax=condval +2*condsd), height=0) + 
    theme_bw() + xlab("") + ylab('') +
    ggtitle("Bernoulli response")
}

ggsave(filename = 'ran_int_Bern.pdf',
       plot = last_plot(),
       device = NULL,
       scale = 1,
       width = 5,
       height = 6,
       units = "in",
       dpi = 300,
       limitsize = TRUE,
       bg = NULL)


#_________________
## C) POISSON response
# Save the GLMM predictions in df_level2_pred.csv

write.csv(df,"df_level2_pred.csv", row.names = FALSE)




