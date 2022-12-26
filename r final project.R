
x=rbinom(90,1000,0.3)
x
a=data.frame(x=c(90),y=c(11,3))
b=lm(y~x^2,data = a)  

summary(b)
library(ggplot2)
d=table(b)
d=as.data.frame(b)
d=table(a$x,a$y)
d=as.data.frame(d)
colnames(d)=c('masters degree','hourly wage')
f=ggplot(d, aes(x='masters degree', y='hourly wage'))
h=f+geom_smooth(se=FALSE)+geom_point(mapping = aes(color='masters degree'))+
  theme_bw()+
  theme(axis.title.x = element_text(), 
        axis.title.y = element_text(), 
        plot.title = element_text(hjust = .5), 
        legend.title = element_blank())+
  ggtitle('Linear Distribution')+
  xlab('masters degree')+
  ylab('hourly wage')+
  theme(legend.position = 'top')
h
library(plotly)
plotly::ggplotly(h)

