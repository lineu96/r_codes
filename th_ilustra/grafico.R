
load("dados.RData")

X11()

ggplot(df,aes(range,loglik))+
  
  geom_line(lwd = 2)+
  
  geom_segment(aes(x = quantile(df$range)[2]*1.2, 
                   y = subset(df, df$range==quantile(df$range)[2]*1.2)$loglik, 
                   xend = quantile(df$range)[2]*1.2, 
                   yend = min(df$loglik)),
               lty = 2)+
  
  geom_segment(aes(x = 0, 
                   y = subset(df, df$range==quantile(df$range)[2]*1.2)$loglik, 
                   xend = 0, 
                   yend = min(df$loglik)),
               lty = 2)+
  
  geom_segment(aes(x = -570, 
                   y = subset(df, df$range==quantile(df$range)[2]*1.2)$loglik, 
                   xend = -20, 
                   yend = subset(df, df$range==quantile(df$range)[2]*1.2)$loglik),
               arrow = arrow(),
               lwd = 2)+

  geom_segment(aes(x = -20, 
                   y = subset(df, df$range==quantile(df$range)[2]*1.2)$loglik, 
                   xend = -570, 
                   yend = subset(df, df$range==quantile(df$range)[2]*1.2)$loglik),
               arrow = arrow(),
               lwd = 2)+
  
  geom_segment(aes(x = 0, 
                   y = (max(df$loglik)-30000), 
                   xend = 0, 
                   yend = subset(df, df$range==quantile(df$range)[2]*1.2)$loglik),
               arrow = arrow(),
               lwd = 2)+
  
  geom_segment(aes(x = 0, 
                   y = subset(df, df$range==quantile(df$range)[2]*1.2)$loglik), 
                   xend = 0, 
                   yend = (max(df$loglik)-30000),
               arrow = arrow(),
               lwd = 2)+
    
  geom_segment(aes(x = -780, 
                   y = quantile(df$loglik)[2]), 
               xend = 0-300, 
               yend = -100,
               lwd = 2)+
  
  
    geom_point(aes(x=0,y=0),colour="red", size=7)+ 
  
  geom_point(aes(x=quantile(df$range)[2]*1.2,
                 y=subset(df, df$range==quantile(df$range)[2]*1.2)$loglik),
             colour="red", 
             size=7)+ 
  
  annotate(geom="text", x=70, 
           y=-180000, 
           label="LRT",
           color="red",
           size = 7) + 
  
  annotate(geom="text", x=-280, 
           y=-380000, 
           label="WT",
           color="red",
           size = 7) +
  
  annotate(geom="text", x=-650, 
           y=-300000, 
           label="LMT",
           color="red",
           size = 7) + 
  
  xlab('Espaço paramétrico')+
  ylab('Log-verossimilhança')+ 
  theme_bw()+
  #ggtitle('TÍTULO')+
  theme(axis.text.y = element_blank(),
        axis.text.x = element_blank(),
        legend.position = 'bottom',
        plot.title = element_text(family = "Helvetica", 
                                  face = "bold", 
                                  size = (20),
                                  hjust = 0.5),
        axis.title = element_text(face = "bold",
                                  size = 20),
        axis.text = element_blank(),
        legend.title = element_blank(),
        text = element_text(size=25))
  