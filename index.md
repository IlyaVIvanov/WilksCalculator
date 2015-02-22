---
title       : Wilks calculator
subtitle    : Compare strenghts of different people, heavy or light
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : mathjax            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Who's stronger: elephant or whale?

Have you ever wanted to compare two powerlifters?

But different weight classes stopped you?

Fear not!

--- .

## The Wilks coefficient!

 - It uses bodyweight, gender, and powerlifting total
 
 $\frac{500*total}{a+bx+cx^2+dx^3+ex^4+fx^5}$
 
 - Where x is bodyweight and a,b,c,d,e coefficients depend on gender 
 



--- .class #id 

## Say you started with 20 kg bar and weigh 60 kg

Then your Wilks equals to


```r
(20+20+20)*500/(-216.0475144+16.2606339*60-0.002388645*(60^2)-
                  
                  0.00113732*(60^3)+7.01863E-06*(60^4)-1.291E-08*(60^5))
```

```
## [1] 51.17245
```

--- .class #id
 
 
 
 

## And if you're world record holder Dan Green...

then your Wilks coefficient equals to


```r
1002*500/(-216.0475144+16.2606339*110-0.002388645*(110^2)-
                  
                  0.00113732*(110^3)+7.01863E-06*(110^4)-1.291E-08*(110^5))
```

```
## [1] 589.6702
```

---
