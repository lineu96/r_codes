#--------------------------------------------------------

x11()

as_d <- rbeta(5000,1,15)
sim <- rbeta(5000,15,15)
as_e <- rbeta(5000,15,1)

#--------------------------------------------------------
# Histograma

layout(mat = matrix(1:6, ncol=3),  height = c(8,3))
#par(mar=c(3.1, 3.1, 1.1, 2.1))

hist(as_d, main = "Assimetria à direita", 
     xlim = c(0,0.6), xlab = '', ylab = '')

boxplot(as_d, horizontal=TRUE,
        outline=TRUE, 
        frame=F, 
        #col = "#CEECF5", 
        width = 10,
        ylim = c(0,0.6))

hist(sim, main = "Dados simétricos", xlim = c(0.2,0.8), 
     xlab = '', ylab = '')

boxplot(sim, horizontal=TRUE,
        outline=TRUE, 
        frame=F, 
        #col = "#CEECF5", 
        width = 10, 
        ylim = c(0.2,0.8))

hist(as_e, main = "Assimetria à esquerda", xlim = c(0.4,1), 
     xlab = '', ylab = '')

boxplot(as_e, horizontal=TRUE,
        outline=TRUE, 
        frame=F, 
        #col = "#CEECF5", 
        width = 10, 
        ylim = c(0.4,1))

#--------------------------------------------------------

# Densidade

layout(mat = matrix(1:6, ncol=3),  height = c(8,3))
#par(mar=c(3.1, 3.1, 1.1, 2.1))

plot(density(as_d), main = "Assimetria à direita", frame = F,
     xlim = c(0,0.6), xlab = '', ylab = '')

boxplot(as_d, horizontal=TRUE,
        outline=TRUE, 
        frame=F, 
        #col = "#CEECF5", 
        width = 10,
        ylim = c(0,0.6))

plot(density(sim), main = "Dados simétricos", frame = F,
     xlim = c(0.2,0.8), 
     xlab = '', ylab = '')

boxplot(sim, horizontal=TRUE,
        outline=TRUE, 
        frame=F, 
        #col = "#CEECF5", 
        width = 10,
        ylim = c(0.2,0.8))

plot(density(as_e), main = "Assimetria à esquerda", frame = F,
     xlim = c(0.4,1), xlab = '', ylab = '')

boxplot(as_e, horizontal=TRUE,
        outline=TRUE, 
        frame=F, 
        #col = "#CEECF5", 
        width = 10,
        ylim = c(0.4,1))

#--------------------------------------------------------

# Teórica

layout(mat = matrix(1:6, ncol=3),  height = c(8,3))

x <- seq(0,1,by = .01)
y <- dbeta(x, 3, 15)
plot(x,y, type = 'l', main = "Assimetria à direita", frame=F,
     xlim = c(0,0.6), xlab = '', ylab = '')

boxplot(as_d, horizontal=TRUE,
        outline=TRUE, 
        frame=F, 
        #col = "#CEECF5", 
        width = 10,
        ylim = c(0,0.6))

x <- seq(0,1,by = .01)
y <- dbeta(x, 15, 15)
plot(x,y, type = 'l', main = "Dados simétricos", frame=F,
     xlim = c(0.2,0.8), xlab = '', ylab = '')

boxplot(sim, horizontal=TRUE,
        outline=TRUE, 
        frame=F, 
        #col = "#CEECF5", 
        width = 10, 
        ylim = c(0.2,0.8))

x <- seq(0,1,by = .01)
y <- dbeta(x, 15, 3)
plot(x,y, type = 'l', main = "Assimetria à esquerda", frame=F,
     xlim = c(0.4,1), xlab = '', ylab = '')

boxplot(as_e, horizontal=TRUE,
        outline=TRUE, 
        frame=F, 
        #col = "#CEECF5", 
        width = 10, ylim=c(0.4,1))

#--------------------------------------------------------
