library(tidyverse)


ggplot(mpg, aes(displ, hwy)) +
  geom_point()

######################
# YOUR TURN slide 22 #
######################
?mpg

# map continous variable to color, size, shape
ggplot(mpg, aes(displ, hwy, color = cty, shape = cty)) +
  geom_point()

# map same variable to multiple aesthetics
ggplot(mpg, aes(displ, cty, color = drv, shape = drv)) +
  geom_point(size = 5)

# illustrate stroke argument
ggplot(mpg, aes(displ, cty)) +
  geom_point(shape = 21, colour = "black", fill = "white", size = 5, stroke = 2)

# map aesthetic to conditional statement
ggplot(mpg, aes(displ, cty, color = year > 1999)) +
  geom_point(size = 5)

######################
# YOUR TURN slide 32 #
######################
ggplot(mpg, aes(displ, cty)) +
  geom_point() +
  facet_wrap(~ year)

ggplot(mpg, aes(displ, cty)) +
  geom_point() +
  facet_grid(year ~ cyl)

ggplot(mpg, aes(displ, cty)) +
  geom_point() +
  facet_grid(year ~ cyl)

ggplot(mpg, aes(displ, cty)) +
  geom_point() +
  facet_grid(~ year + cyl)

ggplot(mpg, aes(displ, cty)) +
  geom_point() +
  facet_grid(year ~ cyl, scales = "free", space = "free")



######################
# YOUR TURN slide 45 #
######################
ggplot(mpg, aes(class, hwy)) +
  geom_boxplot() +
  geom_jitter(width = .25, alpha = .5)

ggplot(mpg, aes(displ, cty)) +
  geom_smooth() +
  geom_rug()


######################
# YOUR TURN slide 51 #
######################
ggplot(mpg, aes(class, fill = factor(cyl))) +
  geom_bar(position = "fill")


######################
# YOUR TURN slide 59 #
######################
ggplot(data = mpg, aes(class, fill = factor(cyl))) + 
  geom_bar(position = "fill") + 
  scale_y_continuous(name = "Percent", labels = scales::percent) + 
  coord_flip()



