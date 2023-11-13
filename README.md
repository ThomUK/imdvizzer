
<!-- README.md is generated from README.Rmd. Please edit that file -->

# {imdvizzer}

{imdvizzer} is designed to visualise England’s [Index of Multiple
Deprivation
(IMD)](https://en.wikipedia.org/wiki/Multiple_deprivation_index) data in
as many ways (or as few) as needed.

The main data source is the [2019 IMD data from the Ministry of Housing,
Communities & Local
Government](https://www.gov.uk/government/statistics/english-indices-of-deprivation-2019).
This data was published with a [suite of additional mapping
resources](https://www.gov.uk/guidance/english-indices-of-deprivation-2019-mapping-resources).
In particular this [zoomable
map](https://dclgapps.communities.gov.uk/imd/iod_index.html) may be of
interest.

For convenience and ease of extension {imdvizzer} uses the
[{geographr}](https://github.com/humaniverse/geographr) package for map
geometries and area lookup files, and the
[{IMD}](https://github.com/humaniverse/IMD) package for IMD data.

## Usage

The first function implemented plots maps of IMD data for each English
Integrated Care Board (ICB). It can be used as follows:

``` r
library(imdvizzer)

map_imd_icb("NHS Nottingham and Nottinghamshire Integrated Care Board")
```

<img src="man/figures/README-example-1.png" width="100%" />

## All English ICBs

This is the 2019 IMD data plotted for every ICB. The individual regions
plotted are [Lower Layer Super Output Areas
(LSOAs)](https://en.wikipedia.org/wiki/GSS_coding_system#Neighbourhood_Statistics_Geography),
which are consistent small geographical regions with populations of on
average 1500 people. Note that the x and y axis scales of these
individual maps are not intended to be consistent. The colour scales are
consistent across the maps.

#### NHS Bath and North East Somerset, Swindon and Wiltshire Integrated Care Board

<img src="man/figures/README-all_icbs-1.png" width="100%" />

------------------------------------------------------------------------

#### NHS Bedfordshire, Luton and Milton Keynes Integrated Care Board

<img src="man/figures/README-all_icbs-2.png" width="100%" />

------------------------------------------------------------------------

#### NHS Birmingham and Solihull Integrated Care Board

<img src="man/figures/README-all_icbs-3.png" width="100%" />

------------------------------------------------------------------------

#### NHS Black Country Integrated Care Board

<img src="man/figures/README-all_icbs-4.png" width="100%" />

------------------------------------------------------------------------

#### NHS Bristol, North Somerset and South Gloucestershire Integrated Care Board

<img src="man/figures/README-all_icbs-5.png" width="100%" />

------------------------------------------------------------------------

#### NHS Buckinghamshire, Oxfordshire and Berkshire West Integrated Care Board

<img src="man/figures/README-all_icbs-6.png" width="100%" />

------------------------------------------------------------------------

#### NHS Cambridgeshire and Peterborough Integrated Care Board

<img src="man/figures/README-all_icbs-7.png" width="100%" />

------------------------------------------------------------------------

#### NHS Cheshire and Merseyside Integrated Care Board

<img src="man/figures/README-all_icbs-8.png" width="100%" />

------------------------------------------------------------------------

#### NHS Cornwall and the Isles of Scilly Integrated Care Board

<img src="man/figures/README-all_icbs-9.png" width="100%" />

------------------------------------------------------------------------

#### NHS Coventry and Warwickshire Integrated Care Board

<img src="man/figures/README-all_icbs-10.png" width="100%" />

------------------------------------------------------------------------

#### NHS Derby and Derbyshire Integrated Care Board

<img src="man/figures/README-all_icbs-11.png" width="100%" />

------------------------------------------------------------------------

#### NHS Devon Integrated Care Board

<img src="man/figures/README-all_icbs-12.png" width="100%" />

------------------------------------------------------------------------

#### NHS Dorset Integrated Care Board

<img src="man/figures/README-all_icbs-13.png" width="100%" />

------------------------------------------------------------------------

#### NHS Frimley Integrated Care Board

<img src="man/figures/README-all_icbs-14.png" width="100%" />

------------------------------------------------------------------------

#### NHS Gloucestershire Integrated Care Board

<img src="man/figures/README-all_icbs-15.png" width="100%" />

------------------------------------------------------------------------

#### NHS Greater Manchester Integrated Care Board

<img src="man/figures/README-all_icbs-16.png" width="100%" />

------------------------------------------------------------------------

#### NHS Hampshire and Isle of Wight Integrated Care Board

<img src="man/figures/README-all_icbs-17.png" width="100%" />

------------------------------------------------------------------------

#### NHS Herefordshire and Worcestershire Integrated Care Board

<img src="man/figures/README-all_icbs-18.png" width="100%" />

------------------------------------------------------------------------

#### NHS Hertfordshire and West Essex Integrated Care Board

<img src="man/figures/README-all_icbs-19.png" width="100%" />

------------------------------------------------------------------------

#### NHS Humber and North Yorkshire Integrated Care Board

<img src="man/figures/README-all_icbs-20.png" width="100%" />

------------------------------------------------------------------------

#### NHS Kent and Medway Integrated Care Board

<img src="man/figures/README-all_icbs-21.png" width="100%" />

------------------------------------------------------------------------

#### NHS Lancashire and South Cumbria Integrated Care Board

<img src="man/figures/README-all_icbs-22.png" width="100%" />

------------------------------------------------------------------------

#### NHS Leicester, Leicestershire and Rutland Integrated Care Board

<img src="man/figures/README-all_icbs-23.png" width="100%" />

------------------------------------------------------------------------

#### NHS Lincolnshire Integrated Care Board

<img src="man/figures/README-all_icbs-24.png" width="100%" />

------------------------------------------------------------------------

#### NHS Mid and South Essex Integrated Care Board

<img src="man/figures/README-all_icbs-25.png" width="100%" />

------------------------------------------------------------------------

#### NHS Norfolk and Waveney Integrated Care Board

<img src="man/figures/README-all_icbs-26.png" width="100%" />

------------------------------------------------------------------------

#### NHS North Central London Integrated Care Board

<img src="man/figures/README-all_icbs-27.png" width="100%" />

------------------------------------------------------------------------

#### NHS North East London Integrated Care Board

<img src="man/figures/README-all_icbs-28.png" width="100%" />

------------------------------------------------------------------------

#### NHS North East and North Cumbria Integrated Care Board

<img src="man/figures/README-all_icbs-29.png" width="100%" />

------------------------------------------------------------------------

#### NHS North West London Integrated Care Board

<img src="man/figures/README-all_icbs-30.png" width="100%" />

------------------------------------------------------------------------

#### NHS Northamptonshire Integrated Care Board

<img src="man/figures/README-all_icbs-31.png" width="100%" />

------------------------------------------------------------------------

#### NHS Nottingham and Nottinghamshire Integrated Care Board

<img src="man/figures/README-all_icbs-32.png" width="100%" />

------------------------------------------------------------------------

#### NHS Shropshire, Telford and Wrekin Integrated Care Board

<img src="man/figures/README-all_icbs-33.png" width="100%" />

------------------------------------------------------------------------

#### NHS Somerset Integrated Care Board

<img src="man/figures/README-all_icbs-34.png" width="100%" />

------------------------------------------------------------------------

#### NHS South East London Integrated Care Board

<img src="man/figures/README-all_icbs-35.png" width="100%" />

------------------------------------------------------------------------

#### NHS South West London Integrated Care Board

<img src="man/figures/README-all_icbs-36.png" width="100%" />

------------------------------------------------------------------------

#### NHS South Yorkshire Integrated Care Board

<img src="man/figures/README-all_icbs-37.png" width="100%" />

------------------------------------------------------------------------

#### NHS Staffordshire and Stoke-on-Trent Integrated Care Board

<img src="man/figures/README-all_icbs-38.png" width="100%" />

------------------------------------------------------------------------

#### NHS Suffolk and North East Essex Integrated Care Board

<img src="man/figures/README-all_icbs-39.png" width="100%" />

------------------------------------------------------------------------

#### NHS Surrey Heartlands Integrated Care Board

<img src="man/figures/README-all_icbs-40.png" width="100%" />

------------------------------------------------------------------------

#### NHS Sussex Integrated Care Board

<img src="man/figures/README-all_icbs-41.png" width="100%" />

------------------------------------------------------------------------

#### NHS West Yorkshire Integrated Care Board

<img src="man/figures/README-all_icbs-42.png" width="100%" />

------------------------------------------------------------------------

END
