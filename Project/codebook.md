---
title: "codebook"
author: "Mark Kushelman"
date: "March 9, 2018"
output: html_document
---



Variable list and descriptions
------------------------------
Note 1: below `u` means `mean` or `std`; `U` means `X`,`Y` or `Z`

Note 2: below the magnitude is calculated in the Euclidean norm

Variable name.          | Description
------------------------|------------
PERSON_ID               | The range is between 1 and 30.
ACTIVITY_NAME           | Activity name
tBodyAcc-u-U            | Feature: The `mean` or `std` time of the 3-dimension _body acceleration_ signals
tGravityAcc-u-U         | Feature: The `mean` or `std` time of the 3-dimension _gravity acceleration_ signals
tBodyAccJerk-u-U        | Feature: The `mean` or `std` time of the 3-dimension _body acceleration jerk_ signals
tBodyGyro-u-U           | Feature: The `mean` or `std` time of the 3-dimension _body gyroscope_ signals 
tBodyGyroJerk-u-U       | Feature: The `mean` or `std` time of the 3-dimension _body gyroscope jerk_ signals 
tBodyAccMag-u           | Feature: The `mean` or `std` time of the magnitude of the _body acceleration_ signals
tGravityAccMag-u        | Feature: The `mean` or `std` time of the magnitude of the _gravity acceleration_ signals
tBodyAccJerkMag-u       | Feature: The `mean` or `std` time of the magnitude of the _body acceleration jerk_ signals
tBodyGyroMag-u          | Feature: The `mean` or `std` time of the magnitude of the _body gyroscope_ signals     
tBodyGyroJerkMag-u      | Feature: The `mean` or `std` time of the magnitude of the _body gyroscope jerk_ signals
fBodyAcc-u-U            | Feature: The `mean` or `std` frequency of the 3-dimension _body acceleration_ signals
fBodyAccJerk-u-U        | Feature: The `mean` or `std` frequency of the 3-dimension _body acceleration jerk_ signals
fBodyGyro-u-U           | Feature: The `mean` or `std` frequency of the 3-dimension _body gyroscope_ signals
fBodyAccMag-u           | Feature: The `mean` or `std` frequency of the magnitude of the _body acceleration_ signals
fBodyBodyAccJerkMag-u   | Feature: The `mean` or `std` frequency of the magnitude of the __for me BodyBody does not have sense__ signals
fBodyBodyGyroMag-u      | Feature: The `mean` or `std` frequency of the magnitude of the __for me BodyBody does not have sense__ signals
fBodyBodyGyroJerkMag-u  | Feature: The `mean` or `std` frequency of the magnitude of the __for me BodyBody does not have sense__ signals
featCount               | Feature: Count of data points used to compute `average`
featAverage             | Feature: Average of each variable for each activity and each subject



```r
str(dt_tidy)
```

```
## Classes 'data.table' and 'data.frame':	10299 obs. of  68 variables:
##  $ PERSON_ID                : int  1 1 1 1 1 1 1 1 1 1 ...
##  $ ACTIVITY_NAME            : chr  "LAYING" "LAYING" "LAYING" "LAYING" ...
##  $ tBodyAcc-mean-X          : num  0.403 0.278 0.277 0.28 0.277 ...
##  $ tBodyAcc-mean-Y          : num  -0.0151 -0.0206 -0.0179 -0.0173 -0.0168 ...
##  $ tBodyAcc-mean-Z          : num  -0.1182 -0.0968 -0.1076 -0.1095 -0.108 ...
##  $ tBodyAcc-std-X           : num  -0.915 -0.985 -0.994 -0.996 -0.997 ...
##  $ tBodyAcc-std-Y           : num  -0.895 -0.991 -0.996 -0.996 -0.997 ...
##  $ tBodyAcc-std-Z           : num  -0.892 -0.982 -0.996 -0.999 -0.995 ...
##  $ tGravityAcc-mean-X       : num  -0.255 -0.21 -0.209 -0.21 -0.209 ...
##  $ tGravityAcc-mean-Y       : num  0.775 0.774 0.772 0.771 0.771 ...
##  $ tGravityAcc-mean-Z       : num  0.59 0.585 0.59 0.59 0.589 ...
##  $ tGravityAcc-std-X        : num  -0.784 -0.96 -0.989 -0.996 -0.999 ...
##  $ tGravityAcc-std-Y        : num  -0.989 -0.989 -0.998 -0.998 -0.999 ...
##  $ tGravityAcc-std-Z        : num  -0.895 -0.965 -0.996 -0.999 -0.997 ...
##  $ tBodyAccJerk-mean-X      : num  0.0234 0.0672 0.0825 0.074 0.0771 ...
##  $ tBodyAccJerk-mean-Y      : num  0.000813 0.015638 0.008357 0.013782 0.01138 ...
##  $ tBodyAccJerk-mean-Z      : num  0.052811 -0.016186 0.000234 -0.007371 0.003476 ...
##  $ tBodyAccJerk-std-X       : num  -0.947 -0.993 -0.995 -0.994 -0.995 ...
##  $ tBodyAccJerk-std-Y       : num  -0.897 -0.989 -0.991 -0.993 -0.994 ...
##  $ tBodyAccJerk-std-Z       : num  -0.978 -0.992 -0.994 -0.996 -0.995 ...
##  $ tBodyGyro-mean-X         : num  0.03155 0.00926 -0.01342 -0.02496 -0.02955 ...
##  $ tBodyGyro-mean-Y         : num  -0.132 -0.0788 -0.0754 -0.0761 -0.0681 ...
##  $ tBodyGyro-mean-Z         : num  0.5433 0.2576 0.1005 0.043 0.0459 ...
##  $ tBodyGyro-std-X          : num  -0.955 -0.981 -0.99 -0.996 -0.999 ...
##  $ tBodyGyro-std-Y          : num  -0.934 -0.993 -0.996 -0.995 -0.995 ...
##  $ tBodyGyro-std-Z          : num  -0.812 -0.892 -0.947 -0.989 -0.994 ...
##  $ tBodyGyroJerk-mean-X     : num  -0.1191 -0.11 -0.1058 -0.1009 -0.0996 ...
##  $ tBodyGyroJerk-mean-Y     : num  -0.0488 -0.0368 -0.042 -0.0405 -0.0403 ...
##  $ tBodyGyroJerk-mean-Z     : num  -0.1554 -0.1236 -0.0909 -0.0604 -0.0478 ...
##  $ tBodyGyroJerk-std-X      : num  -0.97 -0.997 -0.998 -0.999 -0.999 ...
##  $ tBodyGyroJerk-std-Y      : num  -0.953 -0.997 -0.998 -0.998 -0.998 ...
##  $ tBodyGyroJerk-std-Z      : num  -0.972 -0.998 -0.994 -0.995 -0.997 ...
##  $ tBodyAccMag-mean         : num  -0.905 -0.987 -0.998 -1 -0.999 ...
##  $ tBodyAccMag-std          : num  -0.832 -0.978 -0.996 -0.999 -0.998 ...
##  $ tGravityAccMag-mean      : num  -0.905 -0.987 -0.998 -1 -0.999 ...
##  $ tGravityAccMag-std       : num  -0.832 -0.978 -0.996 -0.999 -0.998 ...
##  $ tBodyAccJerkMag-mean     : num  -0.96 -0.993 -0.995 -0.997 -0.996 ...
##  $ tBodyAccJerkMag-std      : num  -0.902 -0.993 -0.995 -0.996 -0.996 ...
##  $ tBodyGyroMag-mean        : num  -0.778 -0.915 -0.973 -0.982 -0.984 ...
##  $ tBodyGyroMag-std         : num  -0.812 -0.899 -0.973 -0.993 -0.994 ...
##  $ tBodyGyroJerkMag-mean    : num  -0.973 -0.998 -0.998 -0.998 -0.999 ...
##  $ tBodyGyroJerkMag-std     : num  -0.94 -0.999 -0.998 -0.999 -0.999 ...
##  $ fBodyAcc-mean-X          : num  -0.926 -0.987 -0.994 -0.996 -0.997 ...
##  $ fBodyAcc-mean-Y          : num  -0.887 -0.989 -0.994 -0.993 -0.995 ...
##  $ fBodyAcc-mean-Z          : num  -0.929 -0.983 -0.995 -0.997 -0.995 ...
##  $ fBodyAcc-std-X           : num  -0.91 -0.984 -0.994 -0.996 -0.997 ...
##  $ fBodyAcc-std-Y           : num  -0.906 -0.992 -0.997 -0.996 -0.998 ...
##  $ fBodyAcc-std-Z           : num  -0.881 -0.982 -0.995 -0.999 -0.995 ...
##  $ fBodyAccJerk-mean-X      : num  -0.949 -0.993 -0.994 -0.995 -0.995 ...
##  $ fBodyAccJerk-mean-Y      : num  -0.898 -0.99 -0.992 -0.993 -0.994 ...
##  $ fBodyAccJerk-mean-Z      : num  -0.973 -0.991 -0.992 -0.994 -0.994 ...
##  $ fBodyAccJerk-std-X       : num  -0.95 -0.993 -0.996 -0.994 -0.995 ...
##  $ fBodyAccJerk-std-Y       : num  -0.904 -0.989 -0.991 -0.994 -0.993 ...
##  $ fBodyAccJerk-std-Z       : num  -0.982 -0.991 -0.994 -0.997 -0.995 ...
##  $ fBodyGyro-mean-X         : num  -0.952 -0.982 -0.989 -0.996 -0.999 ...
##  $ fBodyGyro-mean-Y         : num  -0.933 -0.994 -0.997 -0.997 -0.997 ...
##  $ fBodyGyro-mean-Z         : num  -0.836 -0.898 -0.95 -0.99 -0.994 ...
##  $ fBodyGyro-std-X          : num  -0.956 -0.981 -0.99 -0.996 -0.999 ...
##  $ fBodyGyro-std-Y          : num  -0.934 -0.992 -0.996 -0.994 -0.995 ...
##  $ fBodyGyro-std-Z          : num  -0.822 -0.9 -0.951 -0.989 -0.995 ...
##  $ fBodyAccMag-mean         : num  -0.875 -0.982 -0.995 -0.998 -0.998 ...
##  $ fBodyAccMag-std          : num  -0.836 -0.978 -0.997 -0.998 -0.998 ...
##  $ fBodyBodyAccJerkMag-mean : num  -0.91 -0.993 -0.995 -0.996 -0.997 ...
##  $ fBodyBodyAccJerkMag-std  : num  -0.891 -0.993 -0.994 -0.993 -0.993 ...
##  $ fBodyBodyGyroMag-mean    : num  -0.876 -0.932 -0.985 -0.996 -0.996 ...
##  $ fBodyBodyGyroMag-std     : num  -0.806 -0.896 -0.971 -0.992 -0.994 ...
##  $ fBodyBodyGyroJerkMag-mean: num  -0.952 -0.999 -0.998 -0.999 -0.999 ...
##  $ fBodyBodyGyroJerkMag-std : num  -0.931 -0.999 -0.998 -0.999 -0.999 ...
##  - attr(*, ".internal.selfref")=<externalptr> 
##  - attr(*, "sorted")= chr  "PERSON_ID" "ACTIVITY_NAME"
```


```r
key(dt_tidy)
```

```
## [1] "PERSON_ID"     "ACTIVITY_NAME"
```


```r
dt_tidy
```

```
##        PERSON_ID    ACTIVITY_NAME tBodyAcc-mean-X tBodyAcc-mean-Y
##     1:         1           LAYING       0.4034743    -0.015074404
##     2:         1           LAYING       0.2783732    -0.020560964
##     3:         1           LAYING       0.2765553    -0.017868550
##     4:         1           LAYING       0.2795748    -0.017275722
##     5:         1           LAYING       0.2765270    -0.016819100
##    ---                                                           
## 10295:        30 WALKING_UPSTAIRS       0.2996653    -0.057193414
## 10296:        30 WALKING_UPSTAIRS       0.2738527    -0.007749326
## 10297:        30 WALKING_UPSTAIRS       0.2733874    -0.017010616
## 10298:        30 WALKING_UPSTAIRS       0.2896542    -0.018843044
## 10299:        30 WALKING_UPSTAIRS       0.3515035    -0.012423118
##        tBodyAcc-mean-Z tBodyAcc-std-X tBodyAcc-std-Y tBodyAcc-std-Z
##     1:     -0.11816739     -0.9148112    -0.89523112    -0.89174811
##     2:     -0.09682457     -0.9848826    -0.99111837    -0.98211178
##     3:     -0.10762126     -0.9941946    -0.99637166    -0.99561514
##     4:     -0.10948053     -0.9961353    -0.99581156    -0.99868915
##     5:     -0.10798311     -0.9967754    -0.99725636    -0.99542164
##    ---                                                             
## 10295:     -0.18123302     -0.1953865     0.03990485     0.07707808
## 10296:     -0.14746837     -0.2353085     0.00481628     0.05927999
## 10297:     -0.04502183     -0.2182182    -0.10382198     0.27453270
## 10298:     -0.15828059     -0.2191394    -0.11141169     0.26889320
## 10299:     -0.20386717     -0.2692704    -0.08721154     0.17740393
##        tGravityAcc-mean-X tGravityAcc-mean-Y tGravityAcc-mean-Z
##     1:         -0.2550438          0.7746587        0.589776550
##     2:         -0.2101478          0.7739047        0.585119780
##     3:         -0.2087648          0.7717121        0.589947270
##     4:         -0.2095641          0.7710966        0.590104670
##     5:         -0.2087481          0.7710371        0.589413970
##    ---                                                         
## 10295:          0.9231481         -0.2220041       -0.039491660
## 10296:          0.9183433         -0.2420535       -0.039862500
## 10297:          0.9198095         -0.2369499       -0.026805129
## 10298:          0.9223230         -0.2332303       -0.004983703
## 10299:          0.9187067         -0.2332916       -0.020953992
##        tGravityAcc-std-X tGravityAcc-std-Y tGravityAcc-std-Z
##     1:        -0.7837423        -0.9889256        -0.8953808
##     2:        -0.9603428        -0.9889778        -0.9653030
##     3:        -0.9887928        -0.9975690        -0.9960094
##     4:        -0.9959341        -0.9984650        -0.9987791
##     5:        -0.9994640        -0.9986247        -0.9967349
##    ---                                                      
## 10295:        -0.9444382        -0.8575407        -0.8674138
## 10296:        -0.9535979        -0.9291713        -0.8694935
## 10297:        -0.9784452        -0.9806060        -0.7641497
## 10298:        -0.9741122        -0.9723907        -0.8536165
## 10299:        -0.9524154        -0.9678496        -0.8984653
##        tBodyAccJerk-mean-X tBodyAccJerk-mean-Y tBodyAccJerk-mean-Z
##     1:          0.02344686        0.0008133385        0.0528113250
##     2:          0.06717800        0.0156378930       -0.0161861860
##     3:          0.08249848        0.0083569472        0.0002341825
##     4:          0.07399550        0.0137821200       -0.0073714967
##     5:          0.07712244        0.0113804070        0.0034761282
##    ---                                                            
## 10295:         -0.31922709        0.1113970900       -0.1694275400
## 10296:         -0.42260512        0.3578623600        0.0514560010
## 10297:          0.09654146       -0.1350025300       -0.0291361060
## 10298:         -0.02584867       -0.0258215700       -0.0326821860
## 10299:          0.07505177        0.0114010850       -0.2856811100
##        tBodyAccJerk-std-X tBodyAccJerk-std-Y tBodyAccJerk-std-Z
##     1:         -0.9474534         -0.8972260         -0.9781684
##     2:         -0.9928808         -0.9894338         -0.9916484
##     3:         -0.9948885         -0.9914021         -0.9937718
##     4:         -0.9943904         -0.9931776         -0.9961810
##     5:         -0.9948394         -0.9935192         -0.9951597
##    ---                                                         
## 10295:         -0.2995271         -0.3564275         -0.6506243
## 10296:         -0.3509320         -0.3862116         -0.6417727
## 10297:         -0.3454551         -0.3781767         -0.6430245
## 10298:         -0.3871069         -0.4060632         -0.6678806
## 10299:         -0.3205442         -0.4693679         -0.7126710
##        tBodyGyro-mean-X tBodyGyro-mean-Y tBodyGyro-mean-Z tBodyGyro-std-X
##     1:       0.03155195      -0.13199514       0.54327885      -0.9551393
##     2:       0.00925711      -0.07879312       0.25756479      -0.9811718
##     3:      -0.01342439      -0.07537083       0.10054482      -0.9901304
##     4:      -0.02495981      -0.07613394       0.04303757      -0.9961805
##     5:      -0.02955039      -0.06808514       0.04594675      -0.9991454
##    ---                                                                   
## 10295:      -0.03502366      -0.09301128       0.12441230      -0.3973339
## 10296:       0.11869563      -0.09574625       0.03327696      -0.4784581
## 10297:      -0.21319244       0.03932063       0.19798185      -0.3782516
## 10298:      -0.40620476       0.06879686       0.17746651      -0.5292325
## 10299:      -0.04181019      -0.32250584       0.03825155      -0.4512327
##        tBodyGyro-std-Y tBodyGyro-std-Z tBodyGyroJerk-mean-X
##     1:     -0.93360561      -0.8118869          -0.11906637
##     2:     -0.99271925      -0.8922664          -0.11001902
##     3:     -0.99615343      -0.9470252          -0.10579546
##     4:     -0.99507117      -0.9890233          -0.10094779
##     5:     -0.99548843      -0.9942387          -0.09961923
##    ---                                                     
## 10295:      0.08487785      -0.1657174           0.04090584
## 10296:      0.09824861      -0.1884673          -0.14406697
## 10297:      0.18590206      -0.2699790          -0.23152944
## 10298:      0.19036009      -0.2879251          -0.07991862
## 10299:      0.02221634      -0.2201066           0.26304757
##        tBodyGyroJerk-mean-Y tBodyGyroJerk-mean-Z tBodyGyroJerk-std-X
##     1:          -0.04878607          -0.15544951          -0.9697419
##     2:          -0.03683308          -0.12362339          -0.9970592
##     3:          -0.04196709          -0.09094212          -0.9977386
##     4:          -0.04047405          -0.06044516          -0.9986279
##     5:          -0.04033080          -0.04775066          -0.9988554
##    ---                                                              
## 10295:           0.07815953          -0.11083806          -0.5930287
## 10296:           0.02744048          -0.14013456          -0.6320755
## 10297:          -0.07171316          -0.08098272          -0.6611103
## 10298:          -0.05814916          -0.07121785          -0.6576469
## 10299:           0.09566641          -0.21579029          -0.6954549
##        tBodyGyroJerk-std-Y tBodyGyroJerk-std-Z tBodyAccMag-mean
##     1:          -0.9531439          -0.9721019     -0.905122910
##     2:          -0.9972440          -0.9976071     -0.987446090
##     3:          -0.9981612          -0.9942198     -0.997987630
##     4:          -0.9984311          -0.9945972     -0.999504490
##     5:          -0.9981309          -0.9974129     -0.999057730
##    ---                                                         
## 10295:          -0.6292927          -0.5840011     -0.031718539
## 10296:          -0.6293634          -0.6260069     -0.065256168
## 10297:          -0.6327624          -0.5980500     -0.003935800
## 10298:          -0.6596746          -0.6020059     -0.002445041
## 10299:          -0.6923486          -0.6119226     -0.049089815
##        tBodyAccMag-std tGravityAccMag-mean tGravityAccMag-std
##     1:     -0.83169609        -0.905122910        -0.83169609
##     2:     -0.97847045        -0.987446090        -0.97847045
##     3:     -0.99609738        -0.997987630        -0.99609738
##     4:     -0.99870535        -0.999504490        -0.99870535
##     5:     -0.99827359        -0.999057730        -0.99827359
##    ---                                                       
## 10295:     -0.09368804        -0.031718539        -0.09368804
## 10296:     -0.14853924        -0.065256168        -0.14853924
## 10297:     -0.15870137        -0.003935800        -0.15870137
## 10298:     -0.18571989        -0.002445041        -0.18571989
## 10299:     -0.22915736        -0.049089815        -0.22915736
##        tBodyAccJerkMag-mean tBodyAccJerkMag-std tBodyGyroMag-mean
##     1:           -0.9603565          -0.9022409       -0.77756178
##     2:           -0.9927420          -0.9932015       -0.91521896
##     3:           -0.9951306          -0.9946894       -0.97340095
##     4:           -0.9966514          -0.9956492       -0.98209908
##     5:           -0.9962646          -0.9958706       -0.98441252
##    ---                                                           
## 10295:           -0.4139201          -0.2769031       -0.02043340
## 10296:           -0.4340713          -0.3380341       -0.02724640
## 10297:           -0.4110720          -0.3780005        0.04288741
## 10298:           -0.4448779          -0.4188038        0.02874038
## 10299:           -0.4757782          -0.3132720       -0.10037282
##        tBodyGyroMag-std tBodyGyroJerkMag-mean tBodyGyroJerkMag-std
##     1:      -0.81164844            -0.9732644           -0.9403461
##     2:      -0.89860396            -0.9975084           -0.9986554
##     3:      -0.97291051            -0.9977556           -0.9984269
##     4:      -0.99305154            -0.9983250           -0.9986951
##     5:      -0.99444823            -0.9989408           -0.9991240
##    ---                                                            
## 10295:      -0.11389440            -0.5938237           -0.6898059
## 10296:      -0.16531358            -0.6061105           -0.7095336
## 10297:      -0.04783646            -0.6170732           -0.6944434
## 10298:      -0.01231364            -0.6418402           -0.6927134
## 10299:      -0.09570471            -0.6716245           -0.7198713
##        fBodyAcc-mean-X fBodyAcc-mean-Y fBodyAcc-mean-Z fBodyAcc-std-X
##     1:      -0.9263140     -0.88694847      -0.9287921     -0.9103749
##     2:      -0.9868744     -0.98900774      -0.9833792     -0.9838941
##     3:      -0.9936148     -0.99425887      -0.9951969     -0.9943630
##     4:      -0.9957499     -0.99345251      -0.9972675     -0.9962350
##     5:      -0.9965112     -0.99506101      -0.9947361     -0.9968216
##    ---                                                               
## 10295:      -0.1313659     -0.08907401      -0.2567707     -0.2219892
## 10296:      -0.1590770     -0.07905949      -0.2750528     -0.2674305
## 10297:      -0.3457673     -0.24613490      -0.2872700     -0.1732116
## 10298:      -0.4003685     -0.30687189      -0.3537963     -0.1581917
## 10299:      -0.2652620     -0.22038885      -0.2728009     -0.2707942
##        fBodyAcc-std-Y fBodyAcc-std-Z fBodyAccJerk-mean-X
##     1:    -0.90562736     -0.8810446          -0.9491758
##     2:    -0.99184611     -0.9817975          -0.9928884
##     3:    -0.99682630     -0.9953648          -0.9944850
##     4:    -0.99647204     -0.9990237          -0.9947379
##     5:    -0.99773210     -0.9953860          -0.9953079
##    ---                                                  
## 10295:     0.03782007      0.1524447          -0.2776079
## 10296:    -0.01595056      0.1356481          -0.3526293
## 10297:    -0.09185909      0.4185680          -0.3959014
## 10298:    -0.07760596      0.4298757          -0.4701400
## 10299:    -0.08010541      0.2894096          -0.3567680
##        fBodyAccJerk-mean-Y fBodyAccJerk-mean-Z fBodyAccJerk-std-X
##     1:          -0.8980041          -0.9729599         -0.9502229
##     2:          -0.9901112          -0.9907912         -0.9934960
##     3:          -0.9920715          -0.9921734         -0.9958856
##     4:          -0.9931140          -0.9944597         -0.9944429
##     5:          -0.9940554          -0.9937920         -0.9947047
##    ---                                                           
## 10295:          -0.3403910          -0.6054851         -0.3909422
## 10296:          -0.3471167          -0.6041097         -0.4085466
## 10297:          -0.3679453          -0.6208069         -0.3505566
## 10298:          -0.4583053          -0.6709690         -0.3579492
## 10299:          -0.4827390          -0.6849379         -0.3424707
##        fBodyAccJerk-std-Y fBodyAccJerk-std-Z fBodyGyro-mean-X
##     1:         -0.9036754         -0.9824606       -0.9521760
##     2:         -0.9892862         -0.9909196       -0.9815916
##     3:         -0.9911211         -0.9939737       -0.9887787
##     4:         -0.9937461         -0.9966357       -0.9962521
##     5:         -0.9932537         -0.9951122       -0.9985080
##    ---                                                       
## 10295:         -0.4247760         -0.6952235       -0.3342158
## 10296:         -0.4859153         -0.6778388       -0.4299594
## 10297:         -0.4370713         -0.6627493       -0.4341224
## 10298:         -0.3878953         -0.6636156       -0.5620693
## 10299:         -0.4912107         -0.7385850       -0.3472197
##        fBodyGyro-mean-Y fBodyGyro-mean-Z fBodyGyro-std-X fBodyGyro-std-Y
##     1:       -0.9331338       -0.8355401      -0.9562644      -0.9342784
##     2:       -0.9939633       -0.8983206      -0.9811450      -0.9919288
##     3:       -0.9968874       -0.9503627      -0.9904897      -0.9956296
##     4:       -0.9972731       -0.9901535      -0.9960867      -0.9938215
##     5:       -0.9968899       -0.9940334      -0.9993898      -0.9946098
##    ---                                                                  
## 10295:       -0.2033015       -0.3030927      -0.4201429       0.2221261
## 10296:       -0.2874398       -0.3096755      -0.4965887       0.2721709
## 10297:       -0.3064590       -0.3570412      -0.3734644       0.3983264
## 10298:       -0.3752905       -0.4111765      -0.5275530       0.4241280
## 10299:       -0.2875120       -0.3088774      -0.4847770       0.1663831
##        fBodyGyro-std-Z fBodyAccMag-mean fBodyAccMag-std
##     1:      -0.8216842      -0.87510957      -0.8361963
##     2:      -0.8999714      -0.98218097      -0.9784844
##     3:      -0.9505844      -0.99506057      -0.9967772
##     4:      -0.9894638      -0.99839081      -0.9984494
##     5:      -0.9947283      -0.99773322      -0.9982830
##    ---                                                 
## 10295:      -0.2015845      -0.09710645      -0.2325997
## 10296:      -0.2266229      -0.15816072      -0.2753727
## 10297:      -0.3102584      -0.29865396      -0.2202881
## 10298:      -0.3169318      -0.34679483      -0.2345385
## 10299:      -0.2643296      -0.24003809      -0.3426704
##        fBodyBodyAccJerkMag-mean fBodyBodyAccJerkMag-std
##     1:               -0.9102897              -0.8914699
##     2:               -0.9925130              -0.9929612
##     3:               -0.9945059              -0.9935549
##     4:               -0.9962083              -0.9933149
##     5:               -0.9969963              -0.9926728
##    ---                                                 
## 10295:               -0.2715138              -0.2875532
## 10296:               -0.3530367              -0.3233721
## 10297:               -0.4249092              -0.3263019
## 10298:               -0.4551831              -0.3780772
## 10299:               -0.3379895              -0.2872274
##        fBodyBodyGyroMag-mean fBodyBodyGyroMag-std
##     1:            -0.8759977          -0.80624765
##     2:            -0.9324914          -0.89574669
##     3:            -0.9846662          -0.97054765
##     4:            -0.9960271          -0.99206000
##     5:            -0.9963313          -0.99385786
##    ---                                           
## 10295:            -0.3327526          -0.12972709
## 10296:            -0.3579925          -0.18711416
## 10297:            -0.3519481          -0.03229018
## 10298:            -0.4150037           0.03919899
## 10299:            -0.3307803          -0.10600212
##        fBodyBodyGyroJerkMag-mean fBodyBodyGyroJerkMag-std
##     1:                -0.9524838               -0.9305440
##     2:                -0.9985372               -0.9985563
##     3:                -0.9983322               -0.9983418
##     4:                -0.9985448               -0.9986934
##     5:                -0.9988506               -0.9993605
##    ---                                                   
## 10295:                -0.6810966               -0.7239514
## 10296:                -0.6827557               -0.7711831
## 10297:                -0.6858515               -0.7263718
## 10298:                -0.7121307               -0.6894209
## 10299:                -0.7155882               -0.7451204
```


```r
summary(dt_tidy)
```

```
##    PERSON_ID     ACTIVITY_NAME      tBodyAcc-mean-X   tBodyAcc-mean-Y   
##  Min.   : 1.00   Length:10299       Min.   :-1.0000   Min.   :-1.00000  
##  1st Qu.: 9.00   Class :character   1st Qu.: 0.2626   1st Qu.:-0.02490  
##  Median :17.00   Mode  :character   Median : 0.2772   Median :-0.01716  
##  Mean   :16.15                      Mean   : 0.2743   Mean   :-0.01774  
##  3rd Qu.:24.00                      3rd Qu.: 0.2884   3rd Qu.:-0.01062  
##  Max.   :30.00                      Max.   : 1.0000   Max.   : 1.00000  
##  tBodyAcc-mean-Z    tBodyAcc-std-X    tBodyAcc-std-Y     tBodyAcc-std-Z   
##  Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.0000  
##  1st Qu.:-0.12102   1st Qu.:-0.9924   1st Qu.:-0.97699   1st Qu.:-0.9791  
##  Median :-0.10860   Median :-0.9430   Median :-0.83503   Median :-0.8508  
##  Mean   :-0.10892   Mean   :-0.6078   Mean   :-0.51019   Mean   :-0.6131  
##  3rd Qu.:-0.09759   3rd Qu.:-0.2503   3rd Qu.:-0.05734   3rd Qu.:-0.2787  
##  Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.00000   Max.   : 1.0000  
##  tGravityAcc-mean-X tGravityAcc-mean-Y  tGravityAcc-mean-Z
##  Min.   :-1.0000    Min.   :-1.000000   Min.   :-1.00000  
##  1st Qu.: 0.8117    1st Qu.:-0.242943   1st Qu.:-0.11671  
##  Median : 0.9218    Median :-0.143551   Median : 0.03680  
##  Mean   : 0.6692    Mean   : 0.004039   Mean   : 0.09215  
##  3rd Qu.: 0.9547    3rd Qu.: 0.118905   3rd Qu.: 0.21621  
##  Max.   : 1.0000    Max.   : 1.000000   Max.   : 1.00000  
##  tGravityAcc-std-X tGravityAcc-std-Y tGravityAcc-std-Z tBodyAccJerk-mean-X
##  Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000   
##  1st Qu.:-0.9949   1st Qu.:-0.9913   1st Qu.:-0.9866   1st Qu.: 0.06298   
##  Median :-0.9819   Median :-0.9759   Median :-0.9665   Median : 0.07597   
##  Mean   :-0.9652   Mean   :-0.9544   Mean   :-0.9389   Mean   : 0.07894   
##  3rd Qu.:-0.9615   3rd Qu.:-0.9464   3rd Qu.:-0.9296   3rd Qu.: 0.09131   
##  Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.00000   
##  tBodyAccJerk-mean-Y tBodyAccJerk-mean-Z tBodyAccJerk-std-X
##  Min.   :-1.000000   Min.   :-1.000000   Min.   :-1.0000   
##  1st Qu.:-0.018555   1st Qu.:-0.031552   1st Qu.:-0.9913   
##  Median : 0.010753   Median :-0.001159   Median :-0.9513   
##  Mean   : 0.007948   Mean   :-0.004675   Mean   :-0.6398   
##  3rd Qu.: 0.033538   3rd Qu.: 0.024578   3rd Qu.:-0.2912   
##  Max.   : 1.000000   Max.   : 1.000000   Max.   : 1.0000   
##  tBodyAccJerk-std-Y tBodyAccJerk-std-Z tBodyGyro-mean-X  
##  Min.   :-1.0000    Min.   :-1.0000    Min.   :-1.00000  
##  1st Qu.:-0.9850    1st Qu.:-0.9892    1st Qu.:-0.04579  
##  Median :-0.9250    Median :-0.9543    Median :-0.02776  
##  Mean   :-0.6080    Mean   :-0.7628    Mean   :-0.03098  
##  3rd Qu.:-0.2218    3rd Qu.:-0.5485    3rd Qu.:-0.01058  
##  Max.   : 1.0000    Max.   : 1.0000    Max.   : 1.00000  
##  tBodyGyro-mean-Y   tBodyGyro-mean-Z   tBodyGyro-std-X   tBodyGyro-std-Y  
##  Min.   :-1.00000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000  
##  1st Qu.:-0.10399   1st Qu.: 0.06485   1st Qu.:-0.9872   1st Qu.:-0.9819  
##  Median :-0.07477   Median : 0.08626   Median :-0.9016   Median :-0.9106  
##  Mean   :-0.07472   Mean   : 0.08836   Mean   :-0.7212   Mean   :-0.6827  
##  3rd Qu.:-0.05110   3rd Qu.: 0.11044   3rd Qu.:-0.4822   3rd Qu.:-0.4461  
##  Max.   : 1.00000   Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.0000  
##  tBodyGyro-std-Z   tBodyGyroJerk-mean-X tBodyGyroJerk-mean-Y
##  Min.   :-1.0000   Min.   :-1.00000     Min.   :-1.00000    
##  1st Qu.:-0.9850   1st Qu.:-0.11723     1st Qu.:-0.05868    
##  Median :-0.8819   Median :-0.09824     Median :-0.04056    
##  Mean   :-0.6537   Mean   :-0.09671     Mean   :-0.04232    
##  3rd Qu.:-0.3379   3rd Qu.:-0.07930     3rd Qu.:-0.02521    
##  Max.   : 1.0000   Max.   : 1.00000     Max.   : 1.00000    
##  tBodyGyroJerk-mean-Z tBodyGyroJerk-std-X tBodyGyroJerk-std-Y
##  Min.   :-1.00000     Min.   :-1.0000     Min.   :-1.0000    
##  1st Qu.:-0.07936     1st Qu.:-0.9907     1st Qu.:-0.9922    
##  Median :-0.05455     Median :-0.9348     Median :-0.9548    
##  Mean   :-0.05483     Mean   :-0.7313     Mean   :-0.7861    
##  3rd Qu.:-0.03168     3rd Qu.:-0.4865     3rd Qu.:-0.6268    
##  Max.   : 1.00000     Max.   : 1.0000     Max.   : 1.0000    
##  tBodyGyroJerk-std-Z tBodyAccMag-mean  tBodyAccMag-std  
##  Min.   :-1.0000     Min.   :-1.0000   Min.   :-1.0000  
##  1st Qu.:-0.9926     1st Qu.:-0.9819   1st Qu.:-0.9822  
##  Median :-0.9503     Median :-0.8746   Median :-0.8437  
##  Mean   :-0.7399     Mean   :-0.5482   Mean   :-0.5912  
##  3rd Qu.:-0.5097     3rd Qu.:-0.1201   3rd Qu.:-0.2423  
##  Max.   : 1.0000     Max.   : 1.0000   Max.   : 1.0000  
##  tGravityAccMag-mean tGravityAccMag-std tBodyAccJerkMag-mean
##  Min.   :-1.0000     Min.   :-1.0000    Min.   :-1.0000     
##  1st Qu.:-0.9819     1st Qu.:-0.9822    1st Qu.:-0.9896     
##  Median :-0.8746     Median :-0.8437    Median :-0.9481     
##  Mean   :-0.5482     Mean   :-0.5912    Mean   :-0.6494     
##  3rd Qu.:-0.1201     3rd Qu.:-0.2423    3rd Qu.:-0.2956     
##  Max.   : 1.0000     Max.   : 1.0000    Max.   : 1.0000     
##  tBodyAccJerkMag-std tBodyGyroMag-mean tBodyGyroMag-std 
##  Min.   :-1.0000     Min.   :-1.0000   Min.   :-1.0000  
##  1st Qu.:-0.9907     1st Qu.:-0.9781   1st Qu.:-0.9775  
##  Median :-0.9288     Median :-0.8223   Median :-0.8259  
##  Mean   :-0.6278     Mean   :-0.6052   Mean   :-0.6625  
##  3rd Qu.:-0.2733     3rd Qu.:-0.2454   3rd Qu.:-0.3940  
##  Max.   : 1.0000     Max.   : 1.0000   Max.   : 1.0000  
##  tBodyGyroJerkMag-mean tBodyGyroJerkMag-std fBodyAcc-mean-X  
##  Min.   :-1.0000       Min.   :-1.0000      Min.   :-1.0000  
##  1st Qu.:-0.9923       1st Qu.:-0.9922      1st Qu.:-0.9913  
##  Median :-0.9559       Median :-0.9403      Median :-0.9456  
##  Mean   :-0.7621       Mean   :-0.7780      Mean   :-0.6228  
##  3rd Qu.:-0.5499       3rd Qu.:-0.6093      3rd Qu.:-0.2646  
##  Max.   : 1.0000       Max.   : 1.0000      Max.   : 1.0000  
##  fBodyAcc-mean-Y   fBodyAcc-mean-Z   fBodyAcc-std-X    fBodyAcc-std-Y    
##  Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000  
##  1st Qu.:-0.9792   1st Qu.:-0.9832   1st Qu.:-0.9929   1st Qu.:-0.97689  
##  Median :-0.8643   Median :-0.8954   Median :-0.9416   Median :-0.83261  
##  Mean   :-0.5375   Mean   :-0.6650   Mean   :-0.6034   Mean   :-0.52842  
##  3rd Qu.:-0.1032   3rd Qu.:-0.3662   3rd Qu.:-0.2493   3rd Qu.:-0.09216  
##  Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.00000  
##  fBodyAcc-std-Z    fBodyAccJerk-mean-X fBodyAccJerk-mean-Y
##  Min.   :-1.0000   Min.   :-1.0000     Min.   :-1.0000    
##  1st Qu.:-0.9780   1st Qu.:-0.9912     1st Qu.:-0.9848    
##  Median :-0.8398   Median :-0.9516     Median :-0.9257    
##  Mean   :-0.6179   Mean   :-0.6567     Mean   :-0.6290    
##  3rd Qu.:-0.3023   3rd Qu.:-0.3270     3rd Qu.:-0.2638    
##  Max.   : 1.0000   Max.   : 1.0000     Max.   : 1.0000    
##  fBodyAccJerk-mean-Z fBodyAccJerk-std-X fBodyAccJerk-std-Y
##  Min.   :-1.0000     Min.   :-1.0000    Min.   :-1.0000   
##  1st Qu.:-0.9873     1st Qu.:-0.9920    1st Qu.:-0.9865   
##  Median :-0.9475     Median :-0.9562    Median :-0.9280   
##  Mean   :-0.7436     Mean   :-0.6550    Mean   :-0.6122   
##  3rd Qu.:-0.5133     3rd Qu.:-0.3203    3rd Qu.:-0.2361   
##  Max.   : 1.0000     Max.   : 1.0000    Max.   : 1.0000   
##  fBodyAccJerk-std-Z fBodyGyro-mean-X  fBodyGyro-mean-Y  fBodyGyro-mean-Z 
##  Min.   :-1.0000    Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000  
##  1st Qu.:-0.9895    1st Qu.:-0.9853   1st Qu.:-0.9847   1st Qu.:-0.9851  
##  Median :-0.9590    Median :-0.8917   Median :-0.9197   Median :-0.8877  
##  Mean   :-0.7809    Mean   :-0.6721   Mean   :-0.7062   Mean   :-0.6442  
##  3rd Qu.:-0.5903    3rd Qu.:-0.3837   3rd Qu.:-0.4735   3rd Qu.:-0.3225  
##  Max.   : 1.0000    Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000  
##  fBodyGyro-std-X   fBodyGyro-std-Y   fBodyGyro-std-Z   fBodyAccMag-mean 
##  Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000  
##  1st Qu.:-0.9881   1st Qu.:-0.9808   1st Qu.:-0.9862   1st Qu.:-0.9847  
##  Median :-0.9053   Median :-0.9061   Median :-0.8915   Median :-0.8755  
##  Mean   :-0.7386   Mean   :-0.6742   Mean   :-0.6904   Mean   :-0.5860  
##  3rd Qu.:-0.5225   3rd Qu.:-0.4385   3rd Qu.:-0.4168   3rd Qu.:-0.2173  
##  Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000  
##  fBodyAccMag-std   fBodyBodyAccJerkMag-mean fBodyBodyAccJerkMag-std
##  Min.   :-1.0000   Min.   :-1.0000          Min.   :-1.0000        
##  1st Qu.:-0.9829   1st Qu.:-0.9898          1st Qu.:-0.9907        
##  Median :-0.8547   Median :-0.9290          Median :-0.9255        
##  Mean   :-0.6595   Mean   :-0.6208          Mean   :-0.6401        
##  3rd Qu.:-0.3823   3rd Qu.:-0.2600          3rd Qu.:-0.3082        
##  Max.   : 1.0000   Max.   : 1.0000          Max.   : 1.0000        
##  fBodyBodyGyroMag-mean fBodyBodyGyroMag-std fBodyBodyGyroJerkMag-mean
##  Min.   :-1.0000       Min.   :-1.0000      Min.   :-1.0000          
##  1st Qu.:-0.9825       1st Qu.:-0.9781      1st Qu.:-0.9921          
##  Median :-0.8756       Median :-0.8275      Median :-0.9453          
##  Mean   :-0.6974       Mean   :-0.7000      Mean   :-0.7798          
##  3rd Qu.:-0.4514       3rd Qu.:-0.4713      3rd Qu.:-0.6122          
##  Max.   : 1.0000       Max.   : 1.0000      Max.   : 1.0000          
##  fBodyBodyGyroJerkMag-std
##  Min.   :-1.0000         
##  1st Qu.:-0.9926         
##  Median :-0.9382         
##  Mean   :-0.7922         
##  3rd Qu.:-0.6437         
##  Max.   : 1.0000
```
