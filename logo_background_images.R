


# Plot for Don't Blame the Data logo ---------------------------------------
library(tidyverse)
# theme_set(theme_bw())
#
# set.seed(123)
# a <- rnorm(n= 1500, sd=2)
# b <- rnorm(n=1500, sd=5)
# c <- a + rnorm(n=1500, sd=5)
#
# test <- data.frame(a, b, c)
#
#
# test %>%
#   mutate(above_below = ifelse(c > 0, "Yes", "No")) %>%
#   filter(!between(c, -0.5, 0.5)) %>%
#   ggplot(aes(x=a, y=c, colour = above_below)) +
#   geom_point() +
#   scale_y_continuous(breaks = c(-13, -10, -7, -4, -1, 2, 5, 8, 11, 14), labels = rev(toupper(c("d", "o", "n", "t", "", "b", "l", "a", "m", "e"))), limits = c(-16, 16)) +
#   scale_x_continuous(breaks = c(-7, -5, -3, -1, 1, 3, 5, 7), labels = toupper(c("t", "h", "e", "", "d", "a", "t", "a")), limits = c(-8, 8)) +
#   scale_colour_manual(values = c("wheat3", "wheat4")) +
#   theme(axis.title = element_blank(), axis.text = element_text(size = 26, face = "bold"), axis.ticks = element_blank(), panel.grid = element_blank(), legend.position = "none")
#
#
# ggsave("static/img//logo.jpg", height = 5, width = 5)
#
#
# plot_cols <- c("#498972", "#3E8193", "#BC6E2E", "#A09D3C", "#E06E77", "#7589BC", "#A57BAF", "#4D4D4D")


# set.seed(123)
#
# a2 <- rnorm(n= 1500, sd=1)
#
# b2 <- rnorm(n=1500, sd=5, mean=2)
#
# c2 <- a + rnorm(n=1500, sd=5, mean=20)
#
#
#
# test2 <- data.frame(a2, b2, c2)
#
# test2 %>%
#   ggplot() +
#   geom_density(aes(x=c2), fill=plot_cols[1], alpha=0.3, colour="ivory") +
#   geom_density(aes(x=b2), fill=plot_cols[2], alpha=0.3, colour="ivory") +
#   theme_minimal() +
#   theme(axis.title = element_blank(), axis.text = element_blank(), panel.grid = element_blank(),
#         panel.background = element_rect(fill = "ivory", colour = "ivory"), panel.border = element_blank())
#
# test2 %>%
#   ggplot() +
#   geom_density(aes(x=c2), fill="wheat4", alpha=0.2, colour="ivory") +
#   geom_density(aes(x=b2), fill="wheat4", alpha=0.3, colour="ivory") +
#   theme_minimal() +
#   theme(axis.title = element_blank(), axis.text = element_blank(), panel.grid = element_blank(),
#         panel.background = element_rect(fill = "ivory", colour = "ivory"), panel.border = element_blank())
#
# ggsave("static/img/background_distribution.jpg", height = 1.9, width = 5)


set.seed(1234)
dat <- data.frame(cond = factor(rep(c("A","B"), each=200)),
                  rating = c(rnorm(200),rnorm(200, mean=.8)))
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Code to draw background image on homepage -------------------------------
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Histogram overlaid with kernel density curve
ggplot(dat, aes(x=rating)) +
  geom_histogram(aes(y=..density..),
                 binwidth=.5,
                 , fill="wheat4", alpha=0.2, colour="ivory") +
  geom_density(fill="wheat3", alpha=0.2, colour="ivory") +
  theme_minimal() +
  theme(axis.title = element_blank(), axis.text = element_blank(), panel.grid = element_blank(),
        panel.background = element_rect(fill = "ivory", colour = "ivory"), panel.border = element_blank(),
        plot.background = element_rect(fill = "ivory", colour = "ivory"))

ggsave("static/img/background_distribution.jpg", height = 1.8, width = 5)



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Code to draw logo to include on shared links ----------------------------
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Histogram overlaid with kernel density curve
ggplot(dat, aes(x=rating)) +
  geom_histogram(aes(y=..density..),
                 binwidth=.5,
                 , fill="wheat4", alpha=0.2, colour="ivory") +
  geom_density(fill="wheat3", alpha=0.2, colour="ivory") +
  scale_x_continuous(breaks = seq(-4, 4, by=0.4), labels = toupper(c("", "", "d", "o", "n'", "t", "", "b", "l", "a", "m", "e", "", "t", "h", "e", "", "d", "a", "t", "a"))) +
  theme_minimal() +
  theme(axis.title = element_blank(), axis.text.y = element_blank(), axis.text.x = element_text(size = 18, face = "bold", colour="#4D4D4D"), panel.grid = element_blank(),
        panel.background = element_rect(fill = "white", colour = "white"), panel.border = element_blank(), plot.background = element_rect(fill = "white", colour = "white"))

ggsave("static/img/logo.jpg", height = 1.8, width = 4)
