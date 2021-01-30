library(hexSticker)
library(ggplot2)


set.seed(1234)
dat <- data.frame(cond = factor(rep(c("A","B"), each=200)),
                  rating = c(rnorm(200),rnorm(200, mean=.8)))
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Code to draw background image on homepage -------------------------------
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Histogram overlaid with kernel density curve
a <- ggplot(dat, aes(x=rating)) +
  geom_histogram(aes(y=..density..),
                 binwidth=.5,
                 , fill="wheat4", alpha=0.2, colour="ivory") +
  geom_density(fill="wheat3", alpha=0.2, colour="ivory") +
  theme_minimal() +
  theme(axis.title = element_blank(), axis.text = element_blank(), panel.grid = element_blank(),
        panel.background = element_rect(fill = "ivory", colour = "ivory"), panel.border = element_blank(),
        plot.background = element_rect(fill = "ivory", colour = "ivory"))




sysfonts::font_add_google(name = "Chivo", family = "chivo")
sysfonts::font_add_google(name = "Play", family = "play")

# pitch <- ggplot() +
#   annotate_pitch(fill = "#538032", colour = "white") +
#   theme_pitch() +
#   theme(panel.background = element_rect(fill = "#538032"))


a <- a + theme_void() + theme_transparent()


sticker(a,
        package="dontblamthedata.com",
        p_family = "chivo", p_size=4, p_color = "#4D4D4D",
        s_x=1, s_y=.8, s_width=1.3, s_height=0.85,
        h_fill = "ivory", h_color = "#4D4D4D",
        # url = "https://jaseziv.github.io/worldfootballR/", u_y = 0.07, u_x = 1.0, u_size = 1.2, u_color = "white", u_family = "play",
        filename="static/img/logo.jpg")


# for favicon - remember to resize the image in viewer to 512x512 pixels:
sticker(a,
        package="dontblamthedata.com",
        p_family = "chivo", p_size=4, p_color = "#4D4D4D",
        s_x=1, s_y=.8, s_width=1.3, s_height=0.85,
        h_fill = "ivory", h_color = "#4D4D4D",
        # url = "https://jaseziv.github.io/worldfootballR/", u_y = 0.07, u_x = 1.0, u_size = 1.2, u_color = "white", u_family = "play",
        filename="themes/academic/assets/images/icon.png")
