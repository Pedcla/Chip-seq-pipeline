args <- commandArgs(TRUE)
file.1 <- args[1]
file.2 <- args[2]
ruta_destino <- args[3]


genes.1 <- as.vector(read.table(file=file.1,header=FALSE)[[1]])
print(length(genes.1))
genes.2 <- as.vector(read.table(file=file.2,header=FALSE)[[1]])
print(length(genes.2))

genes.1.2 <- intersect(genes.1,genes.2)

print(length(genes.1.2))

library(VennDiagram)

pdf(paste(ruta_destino, "venn_diagram.pdf", sep="/"), 7, 7)

label.1 <- "Background"
label.2 <- "Target genes sample"

grid.newpage()
draw.pairwise.venn(area1 = length(genes.1),
                   area2 = length(genes.2),
                   cross.area = length(genes.1.2),
                   category = c(label.1, label.2),
                   cat.cex=3, cat.pos=c(-30,20), cat.dist=0.04, cex=2,
                   fill=c("red", "blue"),
                   alpha=c(0.4,0.4),
                   lwd=3,fontface="bold",
                   cat.fontface="bold")

