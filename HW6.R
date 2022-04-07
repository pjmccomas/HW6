
R version 4.1.2 (2021-11-01) -- "Bird Hippie"
Copyright (C) 2021 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Previously saved workspace restored]

> local({pkg <- select.list(sort(.packages(all.available = TRUE)),graphics=TRUE)
+ if(nchar(pkg)) library(pkg, character.only=TRUE)})
> read("C:/Users/black/downloads/house_prices.rda")
Error in read("C:/Users/black/downloads/house_prices.rda") : 
  could not find function "read"
> load("C:/Users/black/downloads/house_prices.rda")
> prices <- load("C:/Users/black/downloads/house_prices.rda")
> head(prices)
[1] "house_prices"
> prices <- load(file="C:/Users/black/downloads/house_prices.rda")
> head(prices)
[1] "house_prices"
> prices <- load(file='C:/Users/black/downloads/house_prices.rda')
> head(prices)
[1] "house_prices"
> load("C:/Users/black/downloads/house_prices.rda")
> head(house_prices)
# A tibble: 6 x 5
  date       state   unemploy_perc house_price_index house_price_perc
  <date>     <chr>           <dbl>             <dbl>            <dbl>
1 1976-01-01 Alabama           6.7              37.1           0.0404
2 1976-02-01 Alabama           6.7              37.8           0.0518
3 1976-03-01 Alabama           6.6              38.3           0.0593
4 1976-04-01 Alabama           6.5              38.6           0.0596
5 1976-05-01 Alabama           6.4              38.7           0.0557
6 1976-06-01 Alabama           6.5              38.8           0.0536
> ggplot(data=house_prices, aes(x='date', y='house_price_index', group=1)) +
+ geom_point() + geom_line() + facet_wrap('state')
Error in ggplot(data = house_prices, aes(x = "date", y = "house_price_index",  : 
  could not find function "ggplot"
> local({pkg <- select.list(sort(.packages(all.available = TRUE)),graphics=TRUE)
+ if(nchar(pkg)) library(pkg, character.only=TRUE)})
> ggplot(data=house_prices, aes(x='date', y='house_price_index', group=1)) +
+ geom_point() + geom_line() + facet_wrap('state')
> ggplot(data=house_prices, aes(x='date', y='house_price_index')) +
+ geom_point() + geom_line() + facet_wrap('state')
> ggplot(data=house_prices, aes(x='date', y='house_price_index')) +
+ geom_point() + geom_line()
> ggplot(data=house_prices, aes(x='date', y='house_price_index')) +
+ geom_point() + geom_line() + facet_wrap('state')
> save.image("C:\\Users\\black\\OneDrive\\Documents\\Winter2022HW\\HW6")
> gather(house_prices, key='house_price_index', value='unemploy_perc', 3:4)
# A tibble: 51,408 x 5
   date       state   house_price_perc house_price_index unemploy_perc
   <date>     <chr>              <dbl> <chr>                     <dbl>
 1 1976-01-01 Alabama           0.0404 unemploy_perc               6.7
 2 1976-02-01 Alabama           0.0518 unemploy_perc               6.7
 3 1976-03-01 Alabama           0.0593 unemploy_perc               6.6
 4 1976-04-01 Alabama           0.0596 unemploy_perc               6.5
 5 1976-05-01 Alabama           0.0557 unemploy_perc               6.4
 6 1976-06-01 Alabama           0.0536 unemploy_perc               6.5
 7 1976-07-01 Alabama           0.0574 unemploy_perc               6.6
 8 1976-08-01 Alabama           0.0659 unemploy_perc               6.8
 9 1976-09-01 Alabama           0.0746 unemploy_perc               6.9
10 1976-10-01 Alabama           0.0797 unemploy_perc               7  
# ... with 51,398 more rows
> house_reshaped <- gather(house_prices, key='house_price_index', 
+ value='unemploy_perc', 3:4) - subset(house_prices, select=c(date, state, house_price_perc))
Error in Ops.data.frame(gather(house_prices, key = "house_price_index",  : 
  ‘-’ only defined for equally-sized data frames
> house_reshaped <- gather(house_prices, key='house_price_index', 
+ 

+ > 
> house_reshaped <- gather(house_prices, key='house_price_index', 
+ value='unemploy_perc', 3:4)
> house_reshaped <- subset(house_reshaped, select=-c(date,state,house_price_perc))
> head(house_reshaped)
# A tibble: 6 x 2
  house_price_index unemploy_perc
  <chr>                     <dbl>
1 unemploy_perc               6.7
2 unemploy_perc               6.7
3 unemploy_perc               6.6
4 unemploy_perc               6.5
5 unemploy_perc               6.4
6 unemploy_perc               6.5
> house_reshaped <- gather(house_prices, key='house_price_index', 
+ value='unemploy_perc', 3:4)
> house_reshaped <- subset(house_reshaped, select=-c(date,house_price_perc))
> head(house_reshaped)
# A tibble: 6 x 3
  state   house_price_index unemploy_perc
  <chr>   <chr>                     <dbl>
1 Alabama unemploy_perc               6.7
2 Alabama unemploy_perc               6.7
3 Alabama unemploy_perc               6.6
4 Alabama unemploy_perc               6.5
5 Alabama unemploy_perc               6.4
6 Alabama unemploy_perc               6.5
> house_reshaped <- gather(house_prices, measure='house_price_index', 
+ value='unemploy_perc', 3:4)
Error in `gather()`:
! Arguments in `...` must be passed by position, not name.
x Problematic argument:
* measure = "house_price_index"
Run `rlang::last_error()` to see where the error occurred.
> ggplot(data='house_reshaped', aes(x='date', y='unemploy_perc', group=supp)) +
+ geom_point() + geom_line() + facet_wrap()
Error in `fortify()`:
! `data` must be a data frame, or other object coercible by `fortify()`, not a character vector.
Run `rlang::last_error()` to see where the error occurred.
> geom_point() + geom_line() + facet_wrap('state')
Error in `+.gg`:
! Cannot add ggproto objects together. Did you forget to add this object to a ggplot object?
Run `rlang::last_error()` to see where the error occurred.
> ggplot(data='house_reshaped', aes(x='date', y='unemploy_perc', group=supp)) +
+ geom_point() + geom_line() + facet_wrap('state')
Error in `fortify()`:
! `data` must be a data frame, or other object coercible by `fortify()`, not a character vector.
Run `rlang::last_error()` to see where the error occurred.
> #Though I couldn't get the table to display properly, I think that the 
> #se graphs are solid graphs to present these pieces of information, th
> #ough I would display each state as needed instead of displaying them 
> #all at once.
> save.image("C:\\Users\\black\\OneDrive\\Documents\\Winter2022HW\\HW6")
> 
