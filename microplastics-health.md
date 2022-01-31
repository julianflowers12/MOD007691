Platic pollution and health
================

## Govt enquiry into plastic pollution

``` r
## import pdfs

path <- here("docs")
pdfs <- list.files(path, "pdf", full.names = T)
docs <- map(pdfs, readtext)
docs
```

    ## [[1]]
    ## readtext object consisting of 1 document and 0 docvars.
    ## # Description: df [1 × 2]
    ##   doc_id  text               
    ##   <chr>   <chr>              
    ## 1 179.pdf "\"House of C\"..."
    ## 
    ## [[2]]
    ## readtext object consisting of 1 document and 0 docvars.
    ## # Description: df [1 × 2]
    ##   doc_id  text               
    ##   <chr>   <chr>              
    ## 1 802.pdf "\"House of C\"..."

### 

Report conclusions and recommendations:

<https://publications.parliament.uk/pa/cm201617/cmselect/cmenvaud/179/17908.htm?utm_source=179&utm_medium=crbullet&utm_campaign=modulereports>

``` r
docs[[1]] %>%
  #(str_detect(text, "Conclusions")) %>%
  select(text) %>%
  knitr::kable()
```

| text             |
|:-----------------|
| House of Commons |

Environmental Audit Committee

Environmental impact of microplastics Fourth Report of Session 2016–17

                                   HC 179

House of Commons Environmental Audit Committee

Environmental impact of microplastics Fourth Report of Session 2016–17

Report, together with formal minutes relating to the report

Ordered by the House of Commons to be printed 20 July 2016

                                                          HC 179
                                       Published on 24 August 2016
                             by authority of the House of Commons

Environmental Audit Committee The Environmental Audit Committee is
appointed by the House of Commons to consider to what extent the
policies and programmes of government departments and non- departmental
public bodies contribute to environmental protection and sustainable
development; to audit their performance against such targets as may be
set for them by Her Majesty’s Ministers; and to report thereon to the
House.

Current membership

Mary Creagh MP (Labour, Wakefield) (Chair) Peter Aldous MP
(Conservative, Waveney) Caroline Ansell MP (Conservative, Eastbourne) Jo
Churchill MP (Conservative, Bury St Edmunds) Geraint Davies MP (Labour
(Co-op), Swansea West) Zac Goldsmith MP (Conservative, Richmond Park)
Margaret Greenwood MP (Labour, Wirral West) Luke Hall MP (Conservative,
Thornbury and Yate) Carolyn Harris MP (Labour, Swansea East) Peter
Heaton-Jones MP (Conservative, North Devon) Peter Lilley MP
(Conservative, Hitchin and Harpenden) Caroline Lucas MP (Green Party,
Brighton Pavilion) Kerry McCarthy MP (Labour, Bristol East) John Mc
Nally MP (Scottish National Party, Falkirk) Rebecca Pow MP
(Conservative, Taunton Deane) Rory Stewart MP (Conservative, Penrith and
The Border) \[ex-officio\]

Powers

The constitution and powers are set out in House of Commons Standing
Orders, principally in SO No 152A. These are available on the internet
via www.parliament.uk.

Publication

Committee reports are published on the Committee’s website at
www.parliament.uk/eacom and in print by Order of the House. Evidence
relating to this report is published on the inquiry publications page of
the Committee’s website.

Committee staff

The current staff of the Committee are David Slater (Clerk), Carl Baker
(Second Clerk), Tom Leveridge (Senior Committee Specialist), Stanley
Kwong (Committee Specialist), Ameet Chudasama (Senior Committee
Assistant), Baris Tufekci (Committe Assistant), and Nicholas Davies
(Media Officer)

Contacts

All correspondence should be addressed to the Clerk of the Environmental
Audit Committee, House of Commons, London SW1A 0AA. The telephone number
for general enquiries is 020 7219 5776; the Committee’s email address is
<eaccom@parliament.uk>

                                                      Environmental impact of microplastics    1

Contents Summary 3

1 Introduction 5

2 Microplastic Pollution 7 Sources of microplastic pollution 7
Microplastic environmental and health impact 9 Marine environment
pollution 9 Impact on human health 11 Economic consequences of
microplastic pollution 13 International cooperation and future trends 14

3 Microbeads 17 Microbeads and wider microplastic pollution 17 Voluntary
commitments 18 Legislative action 21 Alternatives to microbeads 23
Transitional issues (labelling) 25

4 Microplastic prevention and solutions 27 Tackling microplastic
pollution 27 Waste and water treatment solution 28

Conclusions and recommendations 31 Microplastic Pollution 31 Microbeads
31 Microplastic prevention and solutions 33

Formal Minutes 34

Witnesses 35

Published written evidence 36

List of Reports from the Committee during the current Parliament 38

                                                       Environmental impact of microplastics   3

Summary Microplastics are plastic particles smaller than 5mm. They are
used in some cosmetic and personal care products, and can be generated
unintentionally, for example from abrasive sandblasting. Other
microplastics result from the breakup of larger plastic objects in the
oceans. It is estimated that a total of 15-51 trillion microplastic
particles have accumulated in the ocean, with between 80,000 and 219,000
tonnes of microplastics entering the sea from Europe per year.

Our starting point for this inquiry was the significant public concern
around the environmental impact of microbeads - a sub-set of
microplastics that are intentionally added to cosmetic products and
other toiletries, usually to exfoliate the skin. 680 tonnes of plastic
microbeads are used in cosmetic products in the UK every year.
Microplastics from cosmetic products are estimated to make up 0.01% to
4.1% of the total microplastics entering the marine environment. The
fact that this accounts for a small percentage of total microplastic
pollution in the sea does not stop it being a significant, and
avoidable, environmental problem. We were told that a single shower can
result in 100,000 plastic particles entering the ocean. Microbeads are
also the source about which most is known. Addressing it would show
commitment to reducing the wider problem of microplastics.

A large proportion of the cosmetics industry have made voluntary
commitments to phase out microbeads by 2020. However, we found that a
legislative ban would have advantages for consumers and the industry in
terms of consistency of approach, universality and confidence. We
believe that the potential risks of such an approach -
e.g. disadvantaging small firms - are proportionate and can be mitigated
with proper consultation. Microbeads are a transnational source of
pollution and there are advantages to dealing with it on an
international basis. The Government has been considering a national ban
and working towards an EU ban. The outcome of the EU Referendum means
their influence in that process will be significantly reduced.
Nonetheless, we recommend that the Government bring forward its own
legislative ban, and align it as closely as possible with international
measures.

Despite the commitment by a section of the cosmetics industry to phase
out microbeads we found a reluctance to talk publicly about the issue
from large cosmetics manufacturers, and we found a lack of consistency
in their approach. Therefore, we call on the Government to ban
microbeads in the cosmetics industry, we believe this will level the
playing field, and urge the Government to move swiftly towards
implementation.

Microbeads are part of the wider issue of microplastic pollution. The
small size of microplastics means that they can be ingested by marine
life and have the potential to transfer chemicals to and from the marine
environment. There is evidence of ecological damage resulting from this.
If someone eats six oysters, it is likely they will have eaten 50
particles of microplastics. This is still a relatively new research area
and subject to uncertainties. Relatively little research has been done
so far either on potential impacts to human health or the marine
economy. We recommend that the Government draw up a research strategy to
assessing and mitigating microplastic pollution for the next round of
research funding. Human health impacts should be a priority subject for
research, along with examining ways to reduce microplastic pollution
from consumer goods, such as synthetic fibres and tyres, and industrial
processes, such as sandblasting.

4 Environmental impact of microplastics

    We heard that preventing microplastics at source by stemming the flow of microplastics
    flushed into the oceans is the most viable option and should be the Government’s key
    approach in its strategy. However, there are also opportunities to capture microplastics
    through washing machine filtration systems and waste and water sewage treatment
    processes. The Government and Environment Agency should work with water companies
    to understand whether feasible options exist to prevent microplastic pollution at this
    stage.

                                                                    Environmental impact of microplastics           5

1 Introduction 1. Microplastics are generally classified as particles
smaller than 5mm.1 They are used in some cosmetic and personal care
products, for example as exfoliation microbeads, and can be generated
unintentionally, for example from, fibres from clothes, particles from
tyres, and abrasive sandblasting.2 Other microplastics result from the
breakup of larger plastic objects in the oceans.3

2.  The small size of microplastics means that they can end up flushed
    into the sea and causing damage to the marine environment. There are
    currently no systems to fully filter them out through waste water
    treatment.4 One study estimated that a total of 15-51 trillion
    microplastic particles have accumulated in the ocean.5 The
    Environmental Investigation Agency (EIA) estimated that there are
    between 80,000 and 219,000 tonnes of microplastics entering the
    marine environment from Europe per year.6

3.  Our starting point for this inquiry was significant public concern
    around the environmental impact of microbeads - a sub-set of
    microplastics that are intentionally added to cosmetic products and
    other toiletries, usually to exfoliate the skin. Although microbeads
    are only one source of microplastic pollution, accounting for a
    small proportion of the overall impact, we took the view that
    looking at their use is an important starting point for addressing
    the wider issue of microplastic pollution.

4.  Microplastics and their environmental impact are a relative recent
    subject of study. There are many areas where further research will
    be required. The aim of our inquiry was to investigate the scale of
    the problem of microplastics and establish what is known. We looked
    specifically at the issues of microbeads and the impact of the
    Government’s proposed legislative ban. This also included an
    examination of what is known about the health consequences
    microplastics and the extent of the damage to our marine eco-
    systems.

5.  A research briefing note by the Parliamentary Office of Science and
    Technology (POST) summarises microplastic sources and spread, the
    evidence that they present a risk and possible strategies to reduce
    plastic pollution.7 A briefing paper produced by the House of
    Commons Library also provides key information on the use of
    microplastics and microbeads, and their possible impacts on the
    environment and human health.8

6.  The terms of reference for the inquiry can be found on our website.
    We held five public hearings with academics, NGOs, Cosmetics Trade
    Associations, Multinational Corporations, and George Eustice,
    Minister of State at the Department for Environment, Food and Rural
    Affairs (DEFRA). In addition, we received a range of written
    evidence,

1 Q21, Q87, Q263, Greenpeace UK (EIM0020) 2 Q1, Q27, Q69, Q77, Q120 3
Brunel University (EIM0028) 4 Veolia (EIM0039), United Utilities
(EIM0047), Northumbrian Water (EIM0049), Thames Water (EIM0051),
Yorkshire Water (EIM0052), Water UK (EIM0055) 5 Environmental
Investigation Agency (EIM0022) 6 As above 7 Marine Microplastic
Pollution, POST Note 528, Parliamentary Office of Science and
Technology, June 2016 8 Microbeads and microplastics in cosmetic and
personal care products, Briefing Paper Number 7510, House of Commons
Library, May 2016

6 Environmental impact of microplastics

which is published on our website. A full list of witnesses can be found
at the end of this report. We are grateful to all those who gave
evidence to this inquiry. We would also like to thank Dr Jonathan
Wentworth and Ciara Stafford from POST for their assistance.

                                                                   Environmental impact of microplastics          7

2 Microplastic Pollution Sources of microplastic pollution 7. Most of
the world’s ocean plastics by weight are large pieces of debris
(e.g. fishing equipment, bottles and plastic bags). However, the
dominant type of debris by quantity is microplastics.9 Microplastics
have been reported at the sea surface and on shorelines worldwide. They
are also present in remote locations including deep sea sediments and in
arctic sea ice.10 The 5 Gyres Institute estimated that a total of 15-51
trillion microplastic particles have accumulated in the ocean, weighing
between 93 and 236 thousand metric tonnes.11 The large variations in the
estimates are because of scarcity of data, differences in models, and
fundamental knowledge gaps.12

8.  One source of microplastics arises from the breakdown of larger
    plastics. This happens due to the action of catalysing factors such
    as ultraviolet light, which can alter bonds in the plastic
    polymers.13 Dr van Sebille, Imperial College London, argued that
    “degradation is always happening and big plastics become smaller
    and, \[…\], small plastics have bigger impacts.” He added that
    microplastic are “more damaging in general than larger plastics that
    break up as they move through the ocean.”14 Similarly, Professor
    Galloway, University of Exeter, said:

           I think the issue is that as you break things down into smaller and smaller
           particles you increase the surface area. The surface area is where plastics can
           interact with chemicals and other things in the ocean and it is also the surface
           area from which things can leach out into the environment. […] One other
           thing to say is that microplastics overlap with the size range of food items for
           a lot of the creatures and animals that are at the base of the marine food web
           and that is the issue. It means that the plastics can be ingested.15

9.  One of plastics’ greatest properties, its durability, is also one of
    the main reasons that it presents a threat to the marine environment
    when it becomes waste.16 The release of plastic into the marine
    environment has resulted in the rapid accumulation of persistent
    marine plastic debris in the world’s oceans.17 A 2014 report by the
    Norwegian Environment Agency estimated that the largest source of
    microplastic pollution was abrasion from tyres and road markings.18
    Another major source was synthetic fibres from clothing, which are
    released into the wastewater environment from the effluent of
    washing machines in numbers as great as 1900 fibres per garment.19
    Professor Kelly, King’s College London, said a lot of fibres “will
    contain various additional chemicals to give them additional
    properties 9 5 Gyres Institute (EIM0017) 10 Plymouth Marine
    Laboratory (EIM0008), Royal Society of Chemistry (EIM0019),
    Environmental Investigation Agency (EIM0022), Brunel University
    (EIM0028), Professor Richard Thompson (EIM0053) 11 5 Gyres Institute
    (EIM0017) 12 Marine Microplastic Pollution, POST Note 528,
    Parliamentary Office of Science and Technology, June 2016 13 Dr
    Natalie Welden (EIM0003), Plymouth Marine Laboratory (EIM0008), 5
    Gyres Institute (EIM0017), Grantham Institute, Imperial College
    (EIM0027), Richard Shirres (EIM0031) 14 Q23 15 Q18 16 Dr Natalie
    Welden (EIM0003) 17 Marine Microplastic Pollution, POST Note 528,
    Parliamentary Office of Science and Technology, June 2016 18
    Novamont (EIM0035) 19 Plymouth Marine Laboratory (EIM0008),
    University of Exeter (EIM0009), Marine Conservation Society
    (EIM0025), Brunel University, London (EIM0028), Thomas Stanton
    (EIM0033)

8 Environmental impact of microplastics

and it will depend on what they have been mixed up with and what the
components are on the fibres, so that will influence their degradability
\[…\].”20 Dr van Sebille, also suggested that fibres were going to be a
very difficult problem to address as “garments have a use and are there
because they work very well.”21 He further stated:

            I feel that solving the fibre problem might mean engineering solutions, where
            it is about better filtering of wastewater treatment plants. […] civil engineering
            can do something at some point about taking these fibres out in a better way.22

In Europe, the Environment Investigation Agency estimates that there are
between 68,500 and 275,000 tonnes of larger plastics (with the potential
to fragment into microplastics) annually entering the marine
environment.23 According to the Grantham Institute, Imperial College
London, the total amount of plastic floating on the ocean surface is
between 7,000 and 236,000 metric tonnes, whilst the amount of plastic
entering the ocean in the year 2010 alone was 4.8 to 12.7 million
tonnes.24 Dr Erik van Sebille, highlighted this discrepancy:

            The large gap between the amount of plastic entering the ocean and the
            amount floating is because more than 99% of all ocean plastic is in reservoirs
            other than on the surface–the water column and ocean floor, [and] beaches.25

10. The majority of witnesses agreed that a significant proportion of
    marine litter was originally lost or disposed of on land before
    being blown or washed into the marine environment. DEFRA estimated
    this could be around 80%.26 There is also uncertainty over the
    identity of the major sources of microplastic pollution. A report by
    the Marine Conservation Society on beach litter showed that the
    source of 44% of litter items could not be categorised.27 In
    addition, UN GESAMP found that research on the potential ecological
    risks of microplastics was relatively new and that there was “a
    large degree of uncertainty surrounding this issue.”28

11. Different sizes of larger plastic objects can also lead to different
    impacts on the marine environments.29 There is limited information
    on the extent to which impacts vary according to the source or type
    of microplastic. Professor Richard Thompson, Plymouth University,
    states:

            Discharges from point sources such as sewage plants, plastic processing factories
            and rivers can be identified. However, once in the environment it would appear
            that microplastics can move substantial distances, and accumulate in remote
            locations.30

20 Q6 21 Q13 22 As above 23 Environmental Investigation Agency (EIM0022)
24 Grantham Institute, Imperial College (EIM0027) 25 As above 26 DEFRA
(EIM0034) 27 Marine Conservation Society (EIM0025) 28 ‘Sources, fate and
effects of microplastics in the marine environment: a global
assessment’, GESAMP, 2015. 29 Marine Conservation Society (EIM0025) 30
Plymouth University (EIM0011)

                                                                       Environmental impact of microplastics      9

DEFRA argues that “disentangling the effects of microplastics from the
effects of these other factors is unlikely to be possible in the marine
environment.”31 They state:

            For larger items, it is frequently possible to identify what type of plastic
            (eg polyethylene, polypropylene) a particular piece of ocean debris is made
            of. However, when pieces become small and fragmented they are almost
            impossible to trace to their original source.32

12. Witnesses agreed that microplastic pollution in the marine
    environment originated from both land and marine-based sources.
    Although academic witnesses highlighted that microplastics are a
    transnational issue, Professor Richard Thompson, Plymouth
    University, states that “there is also evidence that substantial
    quantities of litter can remain on coastlines close to points of
    entry to the sea.”33

13. There is significant public concern around microbeads, however, they
    make up a small proportion of total microplastic pollution. The
    wider issue of microplastic pollution cannot be set aside once
    microbeads have been dealt with. We recognise the research is still
    relatively new and subject to uncertainties. We recommend that the
    Government work towards a systematic strategy for researching and
    mitigating sources of microplastic pollution. We suggest that
    synthetic fibres and tyres are two sources that should be examined
    at an early stage.

Microplastic environmental and health impact

Marine environment pollution

14. The small size of microplastics means that they can be ingested by
    marine life. It is difficult to make predictions about the risks of
    ingesting microplastics due to the variety of composition, shape and
    size.34 Toxicity could be caused by the plastic polymer itself, the
    additives it contains, or by other chemicals that associate with
    microplastics when they are in the ocean.35 UN GESAMP list the
    potential effects of microplastics on marine organisms as follows:
    physical effects such as obstruction; chemical effects due to
    transportation of toxic chemicals; impaired health; impacts on
    population and ecosystems; and dispersal of damaging pathogens.36

15. There have been experiments into the effect of plastic ingestion for
    marine species, although some of these experiments expose animals to
    a higher concentration of microplastics than has been reported in
    marine ecosystems.37 The magnitude of effects and life stages at
    which they are affected varies between species.38 There are also
    many other marine environmental pressures which make it difficult to
    isolate the sole effect of microplastics upon marine species.39

31 DEFRA (EIM0034) 32 As above 33 Plymouth University (EIM0011) 34 Rame
Peninsula Beach Care (EIM0007), DEFRA (EIM0034) 35 Marine Microplastic
Pollution, POST Note 528, Parliamentary Office of Science and
Technology, June 2016 36 ‘Sources, fate and effects of microplastics in
the marine environment: a global assessment’, GESAMP, 2015. 37 Plymouth
University (EIM0011), DEFRA (EIM0034) 38 Environmental Investigation
Agency (EIM0022) 39 DEFRA (EIM0034)

10 Environmental impact of microplastics

16. Microplastics are ingested by a wide range of wild life, and also
    commercially farmed species. According to Fidra, an environmental
    charity, some microplastics pellets in the range of 2-3mm can be
    mistaken for fish eggs by marine wildlife and seabirds, such as
    puffins.40 Plastic particles can be trapped in the stomach for
    several months and lead to weight loss and malnutrition.41 Over 280
    marine species have been found to ingest microplastics, including
    many with important roles in food chains and the functioning of
    marine ecosystems.42 Microplastics can be ingested by mussels,
    crabs, zooplankton, and sea squirts.43 There is evidence that
    ingestion of microplastics can lead to reduced feeding rates, less
    energy for growth and lower reproduction. The magnitude of effects
    varies between species, and some animals appear only to be affected
    at certain stages of their lifecycle.44 In an experiment conducted
    by Dr Dannielle Senga Green, University of Warwick, repeated
    exposure to a sedimentary habitat associated with flat oysters found
    that there was a reduction in important grazing organisms, such as
    juvenile periwinkles and isopods.45 A reduction in these organisms
    could have knock-on effects on marine ecosystems.

17. Professor Richard Thompson, Plymouth University, in a study of 504
    fish from the English Channel, found that over one-third of the fish
    examined had plastic in their digestive tract.46 He also found that
    some species of seabirds had ingested larger quantities. Dr van
    Sebille, Imperial College London, also conducted a study on the
    effect of plastics on birds and seabirds. He said:

            We found that 80% of seabird species ingest plastic into their stomach, and
            that if you weigh that plastic, the amount of plastic that a typical seabird now
            carries around can be up to 10% of their body weight.47

18. There are other environmental concerns which are not related to
    ingestion of microplastics. For example, microplastics can provide a
    surface for marine insects to lay their eggs.48 This could lead to
    an increase in certain species and a potential disruption in
    ecosystems.49 According to Brunel University, microplastics can also
    host microbial communities and can transport pathogens such as the
    Vibrio strain of bacteria, which could have an impact on wildlife
    health.50 The community of microbes associated with plastic
    fragments is different to that normally found in seawater, which
    could have ecological consequences.51 Professor Tamara Galloway
    argues:

            We know very little about the transfer of plastics from surface waters to the rest
            of the marine environment. […] Little is known of the transfer of microplastics
            across the gut into tissues and the transfer of associated chemicals. We need to
            understand the pathways, mechanisms and effects.52

    40 Fidra (EIM0012) 41 Shay Fennelly (EIM0004) 42 University of
    Exeter (EIM0009) 43 University of Exeter (EIM0009), Fauna & Flora
    International (EIM0016), Environmental Investigation Agency
    (EIM0022), Marine Conservation Society (EIM0025), Brunel University,
    London (EIM0028), DEFRA (EIM0034 44 Marine Microplastic Pollution,
    POST Note 528, Parliamentary Office of Science and Technology, June
    2016 45 Dr Dannielle Green (EIM0040) 46 Plymouth University
    (EIM0011) 47 Q41 48 DEFRA (EIM0034) 49 Marine Microplastic
    Pollution, POST Note 528, Parliamentary Office of Science and
    Technology, June 2016 50 Brunel University, London (EIM0028) 51
    Marine Microplastic Pollution, POST Note 528, Parliamentary Office
    of Science and Technology, June 2016 52 University of Exeter
    (EIM0009)

                                                                     Environmental impact of microplastics       11

19. Although some studies have shown that plastics can transfer
    chemicals to organisms upon ingestion, is not known to what extent
    this could result in harmful effects.53 DEFRA state:

          The evidence base on the effects of micro-plastics in the marine environment
          is limited. However, they do not biodegrade, they accumulate in the marine
          environment, they can absorb toxic chemicals and pathogens, and their small
          size means they have the potential to be ingested by marine organisms.54

20. The impacts on the marine environment are still being researched.
    However, there is evidence that there is scope for significant harm
    to the marine environment. Microplastic pollution is potentially
    more environmentally damaging than larger pieces of plastic because
    small pieces of plastic are more likely to be eaten by wildlife and
    have a greater surface area which can transfer chemicals to and from
    the marine environment.

Impact on human health

21. It is uncertain whether microplastics that are ingested by humans
    can be transported into tissues. Microplastics are widely used as
    carriers for medicines, and can transfer into tissues in humans.
    Thomas Maes, CEFAS told us:

          There is lots of research available from the other side - the medicine side.
          They use microplastics as carriers for medicines… as vectors for delivering
          medicines to those areas where they want them to be active.55

He went on to say:

          [The evidence] shows it could transfer to several layers of the human body, in
          simple layman’s terms. [..] If [microplastics used in medicine] can transfer to
          certain tissues to deliver the medicine, then it could also transfer to the tissues
          without the medicine, I would assume.56

22. Microplastics are present in seafood sold for human consumption,
    such as mussels from the North Sea.57 It is possible that the gut
    wall could stop microplastics from entering tissues, but very small
    particles could potentially pass through.58 Evidence submitted by
    DEFRA said that the smallest particles, known as nanoplastics, can
    even permeate cell membranes, as well as gut tissues.59 Once inside
    tissues, it is theoretically possible for microplastics to interact
    with biological tissues in a toxic manner, but this has not been
    tested.60

53 Fauna & Flora International (EIM0016), Royal Society of Chemistry
(EIM0019), Brunel University, London (EIM0028) 54 DEFRA (EIM0034) 55
Q349 56 Q361 57 King’s College London (EIM0014), 5 Gyres Institute
(EIM0017), Environmental Investigation Agency (EIM0022), Marine
Conservation Society (EIM0025), DEFRA (EIM0034) 58 King’s College London
(EIM0014), Brunel University, London (EIM0028) 59 DEFRA (EIM0034 60
Marine Microplastic Pollution, POST Note 528, Parliamentary Office of
Science and Technology, June 2016

12 Environmental impact of microplastics

23. An essential factor determining whether microplastics present a
    physical threat and/ or act as a vector for transferring chemicals
    is the ability for these particles to be absorbed. Smaller particles
    are more readily absorbed.61 Dr Stephanie Wright and Professor Frank
    Kelly, King’s College London, states:

           Given the novelty of this research area, there is a lack of information concerning
           the post-ingestion particle and chemical toxicity of micro and nanoplastics
           in humans. If micro and nanoplastics are capable of bioaccumulating, they
           present a long-term source of chemicals to tissues and fluids. This is of concern
           as some additives […] have human health effects.62

24. Microplastics are typically reported in the gut of marine organisms.
    In many food uses the gut is removed prior to consumption.63
    Shellfish are exceptions and one recent study by Van Cauwenberghe et
    al., (2015) suggested that consumption of large quantities of
    mussels could present an exposure pathway.64 However, these studies
    have not yet shown measurable harm.65 DEFRA highlighted that no
    studies have investigated whether microplastics can be
    unintentionally ingested by humans and subsequently transported into
    tissues.66 They further state:

           Even for high level consumers of seafoods that are most likely to be relatively
           highly contaminated with marine microplastics, such as mussels or crab,
           dietary exposure to microplastic particles is likely to be relatively low compared
           with inhalation of microplastics.67

We heard that if someone eats six oysters, it is likely they will have
eaten 50 particles of microplastics.68

25. Several NGOs told us a precautionary approach should be applied to
    reduce the risks to human health arising from microplastics.69 The
    EIA state:

           There is a clear risk that marine microplastics in seafood could pose a threat
           to human health, however the complexity of estimating microplastic toxicity
           means that quantification of the risks is not yet possible. […] Future studies
           should focus on assessing the fate and toxicity of microplastics in humans and
           assessing dietary exposure across a range of foods.”70

26. There is little evidence on potential human health impacts of
    microplastic pollution. What evidence there is suggests that dietary
    exposure is likely to be low. Further research in this area is
    underway and is clearly required. The Government should set out a
    timescale within which it will publish an assessment of the
    potential health impacts and any measures it intends as a response.

61 King’s College London (EIM0014) 62 As above 63 Plymouth University
(EIM0011) 64 Professor Richard Thompson (EIM0053) 65 King’s College
London (EIM0014) 66 DEFRA (EIM0034) 67 As above 68 Q51 69 Q87, Q102,
Q107, Q108, Q110 70 Environmental Investigation Agency (EIM0022)

                                                         Environmental impact of microplastics   13

Economic consequences of microplastic pollution 27. There have been wide
ranging estimates to the economic impacts of microplastics to the UK and
EU. The MCS highlighted that marine litter can cause “serious economic
damage that manifests itself as direct losses for coastal communities,
tourism, shipping and fishing.”71 They state:

           Potential costs across the EU for coastal and beach cleaning was assessed
           at almost €630 million per year, while the cost to the fishing industry could
           amount to almost €60 million, which would represent approximately 1% of
           total revenues of the EU fishing fleet in 2010.72

They add:

           Sector costs could also be incurred if ingested microplastics affect commercial
           fish and shell fish stocks, or sales as the public become more aware of the issue
           and express concern through their shopping habits.73

These costs include the cost of clean-ups, loss of fisheries and
wildlife, reductions in tourism, damage to vessels and the rescue costs
and human health risks associated with damaged vessels.74 In the UK,
World Animal Protection UK stated:

           Municipalities spend approximately €18 million each year removing beach
           litter and in 2008 there were 286 rescues in UK water of vessels with fouled
           propellers; incurring a total cost of between €830,000 and €2,189,000.75

The EIA highlighted that estimates of the overall financial damage of
plastics, without extrapolating the impact of microplastics, to marine
ecosystems stand at US$13 billion each year.76 Dr Foster, Marine
Conservation Society, highlighted that the large range of economic costs
comes from including impacts on the shellfish and tourism industry.77
However, there are benefits to tackling microplastic pollution in the
marine environment. The MCS estimated that £250 million pounds could be
saved if microplastics were not present in the marine environment.78

28. CEFAS cited the MICRO project as the first attempt at defining
    economic impacts of microplastics on UK aquaculture (oyster)
    industry in the Channel region reported that it cost between £1,5M -
    £500M.79 The Government said:

           There has been little assessment of the potential economic consequences
           of increased microplastics in the ocean. However an economic analysis
           demonstrated that there are potential costs associated with microplastics to

71 Marine Conservation Society (EIM0025) 72 As above 73 As above 74
Brunel University, London (EIM0028) 75 World Animal Protection UK
(EIM0013) 76 Environmental Investigation Agency (EIM0022) 77 Q118 78
Marine Conservation Society (EIM0025) 79 CEFAS (EIM0023)

14 Environmental impact of microplastics

           the aquaculture sector in the UK. Removal of microplastics from the marine
           environment is currently considered to be prohibitively expensive and
           technically infeasible.80

The Government adds:

           There is widespread agreement that the most effective way to reduce
           microplastic pollution is to focus on preventing plastic from entering the
           marine environment in the first place (both microplastics and larger pieces of
           debris that will eventually fragment into microplastics).81

Professor Richard Thompson highlighted the need for policy
prioritisation. He stated:

           There is limited information on the extent to which impacts vary according to
           the source or type of microplastic. […] more work would be needed to establish
           a risk assessment based on microplastic type, size or shape.82

He added:

           On the basis of current knowledge it would be difficult to prioritise policy
           measures according to differences in the severity impacts according to
           microplastic type.83

29. The Committee heard that studies estimating the economic costs of
    microplastic pollution vary widely. As with the health impacts, the
    Government should set out a timescale in which it intends to produce
    a more accurate assessment. It should also ensure that microplastics
    are treated as an economic issue - within the scope of its food and
    farming strategy - as well as an environmental one.

International cooperation and future trends 30. The United Nations
Sustainable Development Goal 14.1 is focused on ocean pollution.84 The
Goals challenge countries over the next 15 years to take action to
address critical issues including ocean plastic. International
cooperation on tackling marine litter is also managed through a range of
groups, conventions and legal instruments.85 According to DEFRA, the
main ones are:

1.  The EU Marine Strategy Framework Directive (MSFD): This is the
    overarching policy framework for addressing marine litter. A
    Technical Group on Marine Litter (TG-ML) provides guidance on
    targets, monitoring and measures.

2.  MARPOL (the International Convention for the Prevention of Pollution
    from Ships): Annex 5 of the convention specifically deals with
    marine litter and prohibits the disposal at sea of all forms of
    plastic.

80 DEFRA (EIM0034) 81 As above 82 Plymouth University (EIM0011) 83 As
above 84 5 Gyres Institute (EIM0017), Environmental Investigation Agency
(EIM0022) 85 5 Gyres Institute (EIM0017)

                                                        Environmental impact of microplastics   15

3.  The Oslo and Paris Convention for the Protection of the Marine
    Environment of the North-East Atlantic (OSPAR): A regional seas
    convention facilitating cooperation between contracting parties.

4.  The G7 group: The UK also works with the other G7 countries to
    address marine litter.86

Thomas Maes, CEFAS, also highlighted ongoing research through the Joint
Programming Initiative Oceans, which is European-led. He said:

           They look at degradation of microplastics and plastics—how that happens.
           They also look at standardisation of techniques across the world and they look
           at impacts on animals.87

31. However, FFI argue that the non-governmental sector has taken the
    lead on international co-operation around microplastic pollution.
    They state:

           The collection and public dissemination of microplastic data has been effective
           in driving corporate change and mitigating one of the most unnecessary inputs
           of microplastics to freshwater and marine environments.88

They also believe that an agreed monitoring framework for the mitigation
of this source of microplastic is key to driving further industrial
innovation in preventing microplastic emission.89 However, they add:

           The NGO monitoring of these products and the companies that produce
           them–and the non-statutory funding that pays for this monitoring–are not
           sustainable in the long-term.90

32. Academic witnesses said a huge amount of research is currently
    taking place to try and ascertain the dangers of microplastics.91
    This is a complicated and difficult task given the inherent
    complexities in biological systems and their interactions with the
    environment.92 However, they argued that there was progress. Dr van
    Sebille said, “even though there are lots of things we don’t know,
    we are very much on track to understanding this.”93 Similarly,
    Professor Kelly said, “I think it is a gradual accumulation of
    evidence and a realisation that \[microplastics are\] another thing
    we are doing to our environment that we really should not be
    doing.”94

33. It is important to address microplastic pollution as a transnational
    problem and to understand that plastic in the ocean is in constant
    motion. The Government should continue international cooperation
    despite uncertainties arising from the EU referendum. It is clear
    that international action is needed. We recommend the Government
    maintain existing cooperation with international partners in
    tackling microplastic pollution. Up to now, NGOs have taken the lead
    role in addressing this 86 DEFRA (EIM0034) 87 Q357 88 Fauna & Flora
    International (EIM0016 89 As above 90 As above 91 Q28, Q32, Q37, Q60
    92 Q6 93 Q32 94 Q1

16 Environmental impact of microplastics

issue. However, this is unsustainable given the increasing costs and
demands relating to microplastic pollution. As more evidence emerges
about the impact of microplastic pollution, the Government must take on
that role.

                                                                Environmental impact of microplastics   17

3 Microbeads Microbeads and wider microplastic pollution 34. Microbeads
are a sub-category of microplastics, commonly manufactured for domestic
use in cosmetic scrubs, toothpastes, and cleaning products.95 The UK
Cosmetics, Toiletry and Perfumery Association (CTPA) define plastic
microbeads as:

          Any intentionally added, 5mm or less, water insoluble, solid plastic particle
          used to exfoliate or cleanse in rinse-off personal care products.96

35. Microbeads became popular in personal care products in the 1990s
    when they were seen as an easy and versatile formulation by
    companies.97 Cosmetics companies added them to their personal care
    product portfolios, including cosmetics, lotions, face washes,
    toothpastes, shampoos, sunscreens, shaving creams and exfoliators.
    They allowed greater control over the consistency of product as
    compared to natural alternatives.98 Dr Laurent Gilbert, L’Oreal,
    said:

          [Microbeads] are much more producible in terms of particulate size and
          exfoliation properties than the kernel powders that we used before, so that is
          the reason why and availability was also something that was important. […]
          It was really about their physical chemical properties, their versatility and the
          fact that you can formulate them in many different textured products without
          any difficulty. That is much more complex with kernel products.99

36. As a result of their small size, microbead particles can travel
    through wastewater sewage treatments into the ocean, causing marine
    environmental damage.100 Professor Richard Thompson, University of
    Plymouth, cited a study that estimated that 680 tonnes of microbeads
    are used annually in cosmetic products in the U.K.101 He also cited
    another study which estimated that a single 150ml container of
    cosmetic product could contain around 3 million plastic
    particles.102 Professor Galloway, University of Exeter, said, “every
    time you take a shower that does not have microbeads in it, you
    would have 100,000 fewer particles washing down the sink.”103 The
    Committee also heard from academics who all emphasised that
    microbeads, like other microplastics, do not biodegrade and
    therefore accumulate in the marine environment.104

37. Microbeads are a growing area of public concern with a recent
    Greenpeace petition calling for a UK ban attracting more than
    300,000 signatures.105 Our evidence suggests there is a broad public
    consensus that plastic microbeads should be phased out of cosmetic
    products.

95 Plastic Ocean (EIM0021), DEFRA (EIM0034), Veolia (EIM0039) 96 The
Cosmetic Toiletry & Perfumery Association (EIM0038) 97 Q170, Q419, Q452,
Q469, Q487 98 Q8, Q78, Q237 99 Q469 100 Plymouth University (EIM0011)
101 As above 102 As above 103 Q7 104 Q41, Q43, Q282 105 Q92, Greenpeace
UK (EIM0020)

18 Environmental impact of microplastics

38. There is limited scientific literature available that assesses the
    relative impact of microbeads compared to overall microplastics in
    the ocean.106 According to DEFRA, microplastics from cosmetic
    products make up a small percentage of the total of micro- plastics
    entering the marine environment, with estimates ranging from 0.01%
    to 4.1%.107 They argue, “A ban in the UK would therefore be expected
    to have only a small impact on the environmental situation around
    microplastics.”108 The Marine Conservation Society (MCS) also noted
    the upper end of DEFRA’s estimate, arguing that cosmetic
    microplastics could be contributing between 2,461 and 8,627 tonnes
    per year to the marine environment across Europe.109 The Cosmetics,
    Toiletry and Perfumery Association (CTPA) note that eradicating
    microbeads from cosmetics would have a minor impact on the problem
    as a whole in the absence of robust measures to tackle the major
    sources.110 The British Plastics Federation (BPF) argued that a
    microbead ban would have a relatively low impact on the much larger
    challenge of plastic pollution.111 However, Professor Galloway
    argued that the number of microbeads is a more important measurement
    framework than the total mass.112 Professor Thompson added, “It
    might be small in percentages, but to me what that illustrates is
    the scale of the wider problem, rather than trivialising the issue
    relating to microbeads as a source.”113

39. Experts have estimated that around 680 tonnes of plastic microbeads
    are used in the UK every year. A single shower can result in 100,000
    plastic particles entering the sewage system. Microplastics from
    cosmetic products are believed to make up 0.01% to 4.1% of the total
    microplastics entering the marine environment. The fact that this
    accounts for a small percentage of total microplastic pollution in
    the sea does not stop it being a significant and avoidable
    environmental problem, and possibly a low- hanging fruit in the
    context of tackling wider plastic pollution.

Voluntary commitments 40. According to Fauna & Flora International
(FFI), there are currently 25 UK companies that are, or intend to
become, microbead-free.114 On 21st October 2015, Cosmetics Europe, the
personal care trade association, issued a recommendation to their member
companies to “discontinue \[microbead\] use in cosmetics that are most
likely to end up in the aquatic environment and for which alternatives
exist.”115 They stated:

           Cosmetics Europe recommends its membership to discontinue, in wash-off
           cosmetic products placed on the market as of 2020: The use of synthetic, solid
           plastic particles used for exfoliating and cleansing that are non-biodegradable
           in the marine environment.116

106 Grantham Institute, Imperial College (EIM0027) 107 DEFRA (EIM0034)
108 As above 109 Marine Conservation Society (EIM0025) 110 The Cosmetic
Toiletry & Perfumery Association (EIM0038) 111 British Plastics
Federation (EIM0041) 112 Q17 113 Q270 114 Fauna & Flora International
(EIM0016) 115 Cosmetics Europe (EIM0032) 116 ’Cosmetics Europe
recommendation on solid plastic particles (plastic micro particles),
Cosmetics Europe Press Release, 21 October 2015

                                                              Environmental impact of microplastics   19

John Chave, Cosmetics Europe, said that this recommendation “applies” to
90% of their membership.117 CTPA, which represents 80-85% of the UK
cosmetics market by value, argued:

          This course of action was chosen because it would have an impact far more
          quickly than waiting for any legislative ban. Although the date for final
          removal was stated at 2020, the majority of use would be discontinued long
          before then.118

41. The phase-out of microplastic ingredients also extends to the retail
    industry. The British Retail Consortium (BRC) reported that many
    retailers are phasing out microbeads from their own-brand products,
    including Aldi, Asda, Asos, Boots, M&S, Morrisons, Next,
    Sainsbury’s, Tesco and Waitrose.119 However, BRC adds that their
    members can only dictate the composition of their own products.120
    For other products, they state:

          Whilst retailers will know the composition of their own brand products,
          retailers are not informed of the composition of branded products aside from
          any information that brands are legally obliged to provide. While retailers can
          put pressure on brands regarding the composition of products, they are not in
          a position to dictate this.121

42. The Committee heard from large cosmetics industry companies which
    planned to take action before the 2020 target. Johnson & Johnson
    told us that they had replaced ‘half \[of their\] products sold\]’
    based on their 2015 commitments, and further stated, “Our goal is to
    remove microbeads from our products globally by the end of 2017.”122
    Similarly, L’Oreal said they had already phased-out microbeads in
    their two brands ‘Biotherm’ in 2014 and ‘The Body Shop’ in 2015.123
    They said they would extend this to the whole Group’s portfolio
    “\[by\] no longer \[using\] microbeads of polyethylene in its scrubs
    by 2017.”124 Procter & Gamble also plan “to remove polyethylene
    microbeads from all \[…\] cleansers and toothpastes by 2017.”125 Dr
    Masscheleyn, Procter and Gamble, said, “We are on track to remove
    all plastic microbeads from our products by the end of this calendar
    year, so we are just a few months away from total elimination.”126
    Out of the companies we heard from, Unilever were the only business
    who had completed their phase-out so far.127 Ian Malcomber,
    Unilever, said:

          We have completed our phase out. We committed to the phase out in 2012.
          We were one of the first companies to do that. We gave ourselves a two-year
          deadline to do that and we completed that at the end of 2014.128

117 Q165 118 The Cosmetic Toiletry & Perfumery Association (EIM0038) 119
British Retail Consortium (EIM0037) 120 As above 121 British Retail
Consortium (EIM0037) 122 Johnson & Johnson (EIM0042) 123 L’Oreal
(EIM0043) 124 As above 125 ‘What are Microbeads?’, Procter & Gamble 126
Q406 127 Q407 128 Q407

20 Environmental impact of microplastics

43. Despite the voluntary commitments, NGOs argued that there are
    inconsistencies in the approach taken by the companies in phasing
    out microbeads.129 FFI argued that microplastics remained in
    personal care and cosmetic products, in spite of the existence of
    voluntary commitments in this sector.130 They found that 16% of over
    1,300 UK personal care and cosmetic products randomly sampled by
    them contained solid microplastic ingredients.131 They also
    conducted an evaluation of existing commitments against criteria
    which they considered necessary to constitute a robust and
    meaningful commitment.132 These criteria included: the phasing out
    of all solid microplastic ingredients, across all products that go
    down the drain, applying to all of the company’s brands, all of the
    markets it is active in, all future formulations of those products,
    with no exemption for biodegradable plastics or and no lower size
    limit for the particle being phased out.133 We heard from Daniel
    Steadman, Fauna & Flora International, who argued that at least
    seven major multinational brands have failed at least one of these
    criteria.134 He said:

          It might be that they made these commitments when the understanding of the
          issue wasn’t at maturity, but […] this causes consumer confusion. [Consumers]
          might be aware that their favourite brand has phased out microbeads, but
          actually what that company’s definition of microbeads is too narrow to be
          adequately dealing with the problem.135

Professor Thompson also said the criteria and definitions used in the
wording of the ban are important:

          The term microbead is an industry phrase lacking a definition of clear relevance
          to the problems of microplastic in the environment. Legislation in some other
          countries may have inadvertently left ambiguity and we need to be sure this is
          not the case in the UK.136

44. Whilst the majority of witnesses, including the Government,
    supported voluntary phase-out by cosmetic companies, NGOs had
    concerns regarding the time frame and commitment levels.137 For
    example, The Cornwall Plastic Pollution Coalition welcomed companies
    that had pledged to stop using plastic microbeads but emphasised
    that “a voluntary industry phase out by 2020 is too slow and will be
    too patchy.”138 They argue:

          The weaknesses of voluntary industry action can be seen in Operation Clean
          Sweep, the plastic industry scheme to prevent pollution from UK plastics
          plants through loss of pre-production pellets. After seven years this has still
          only been signed by 53 out of over 3,000 companies.139

45. We welcome the commitment by a section of the cosmetics industry to
    phase out microbeads. However, the commitment is not universal, and
    there are inconsistencies in approach. Some companies will not phase
    out until 2020 and, since this commitment 129 Q65, Q69, Q129, Fauna
    & Flora International (EIM0016) 130 Fauna & Flora International
    (EIM0016) 131 As above 132 Q65 133 Fauna & Flora International
    (EIM0016)) 134 Q67 135 Q65 136 Professor Richard Thomson (EIM0053)
    137 Q65, Q68, Q87, Q114, Fauna & Flora International (EIM0016) 138
    Cornwall Plastic Pollution Coalition (EIM0054) 139 Cornwall Plastic
    Pollution Coalition (EIM0054)

                                                                    Environmental impact of microplastics       21

is voluntary, some companies may not phase out at all. Voluntary action
alone will not be adequate to tackle the challenges of microbeads, and
believe that a legislative ban would be beneficial in bringing greater
consistency in the industry.

Legislative action 46. The US have already issued a legal ban on
microbeads in cosmetic products. Through the Microbead-Free Waters Act
2015, the US will ban the manufacture or interstate trade of products
containing microplastics.140 This Act will ban rinse-off cosmetics
products containing microbeads from 2018 and the manufacture of these
products by 2017.141 According to Johnson & Johnson, there were three
critical elements of the US Act that allowed them to support the
legislation:

    i) An accurate and appropriately scoped definition of microbeads;

    ii) Implementation dates that allow adequate time (usually around 2-3 years) to
        complete product reformulation and ensure that consumers have an uninterrupted
        flow of product; and

    iii) Federal pre-emption to ensure national consistency of approach.142

Other countries that are considering bans include Sweden, the
Netherlands, New Zealand, Canada, and Kenya.143

47. In the EU there is currently no legislation regulating the use and
    discharge of microplastics in cosmetic and personal care products.
    Cosmetics Europe and CTPA both argued that existing voluntary
    commitments were sufficient. The CTPA state:

          Given that the phase-out by industry is already underway, we do not think
          that a ban would have much impact. This being said, the European cosmetics
          industry does not object in principle since a ban would ensure that any
          companies who choose not to follow the recommendation would still have to
          comply with the objective of acting responsibly and removing this source of
          pollution of the marine environment.144

The BPF and Plastics Europe agreed. They stated:

          In view of the voluntary commitment of the cosmetic industry a ban should
          not be necessary and it would involve an unnecessary expenditure of taxpayer
          money that could be put to better use.145

48. Dr Erik van Sebille, Imperial College, said that an international
    ban would be much more effective than a national ban on microbeads
    in tackling the much larger challenge of plastic pollution. However,
    he argued that a national ban was an important place to start:

140 Thomas Stanton (EIM0033) 141 Microbeads and microplastics in
cosmetic and personal care products, Briefing Paper Number 7510, House
of Commons Library, May 2016 142 Johnson & Johnson (EIM0042) 143
Microbeads and microplastics in cosmetic and personal care products,
Briefing Paper Number 7510, House of Commons Library, May 2016 144 The
Cosmetic Toiletry & Perfumery Association (EIM0038) 145 British Plastics
Federation (EIM0041)

22 Environmental impact of microplastics

          A microbead ban is about taking action to tackle ocean plastic pollution at
          source and, in our view, this is the right way to address the problem, making it
          a good choice of policy. […] Banning plastics for this use will also demonstrate
          that the government and other stakeholders in the UK are willing to use policy
          levers to tackle pollution at source.146

Daniel Steadman argued that “there is a clear role for the UK Government
to play in providing guidance and providing a level playing field”
through a legislative ban. Whilst, CHEM Trust, a UK-based charity
working to protect humans and wildlife from harmful chemicals, argued:

          A UK ban on microbeads would be a start, but EU-wide action would be more
          effective. The UK government should be pushing the European Commission
          to propose regulation in this area.147

Keep Britain Tidy, an environmental charity, also argued that a ban
could increase international cooperation:

          A number of European countries, Canada and Australia are all considering a
          legislative route also. If we lead the way we may well influence others to join in
          and strengthen international action against the microplastics issue.148

49. In relation to international cooperation, DEFRA said, that they are
    “supporting other EU Member States in calling for the European
    Commission to come up with proposals to ban micro-beads in cosmetics
    and detergents.”149 George Eustice, Minister at DEFRA, added:

          We supported and played quite a key role in getting the OSPAR agreement, the
          Convention for the Protection of the Marine Environment of the North-East
          Atlantic, in 2014.150

50. We heard that the last Government would have considered a unilateral
    ban on plastic microbeads in shower gels and facial scrubs if the EU
    did not prohibit their use. The Minster said:

          We are working with other European countries to get that on the agenda at
          European level. But we do not rule out doing it at national level if that falls
          short or fails to progress.151

One of the mechanisms for action is through the EU Circular Economy
Package. George Eustice, Minister at DEFRA, said:

          If things go well and it has a fair wind, it is quite possible you could have [a ban
          through the EU Circular Economy Package] in place next year, during 2017.152

146 Q91 147 CHEM Trust (EIM0010) 148 Keep Britain Tidy (EIM0029) 149
DEFRA (EIM0034) 150 Q287 (George Eustice) 151 Q287 (George Eustice) 152
Q372 (George Eustice)

                                                                    Environmental impact of microplastics   23

51. The Minister noted that a legislative ban might benefit those
    companies already taking action:

          If the big, responsible companies are saying, “We will voluntarily get rid of
          these anyway”, frankly it does not matter to them any more if you decide to
          put in place a ban. If anything, it gives them the reassurance that they will not
          be placed at a disadvantage from a few companies that might decide not to.153

52. Legislative action would have several advantages for consumers and
    the industry over the current, voluntary, approach to microbeads. It
    would be universal, ensuring consumer confidence and preventing
    responsible companies being undercut. It would ensure consistent
    definitions were used by all industry participants. It would also
    send a message that Government was serious about addressing the
    wider issue of microplastic pollution. In working towards such
    legislation, the Government should consult widely on implementation
    to ensure that the main risk - smaller companies being
    disadvantaged - is mitigated.

53. Microbead pollution does not respect national borders. Legislative
    measures to prevent the sale or manufacture of microbeads will be
    more effective if undertaken on a transnational basis. The last
    Government recognised this, and had been working towards EU
    legislation by the middle of next year. The outcome of the
    Referendum on EU Membership means that work will now be taken
    forward by other countries and the new Government, and the UK will
    have much less influence over it. However, the benefits of
    cross-border consistency remain.

54. We recommend that the Government introduce a legislative ban on the
    use of plastic microbeads in cosmetics and other toiletries. The
    legislation should follow the principles set out by Fauna & Flora
    International around universality and consistency. The Government
    should ensure consistency with international legislation -
    particularly with whatever EU measures are introduced - wherever
    possible, though we regret that this means the UK will have less
    control over the specific design of the ban.

Alternatives to microbeads 55. Natural materials including cocoa beans,
ground almonds, ground apricot pits, sea salt, ground pumice and oatmeal
can be used as alternatives to microbeads in cosmetics products.154
Professor Galloway argued there are many alternative particles that are
organic and are therefore more likely to biodegrade as compared to
microbeads.155 She highlighted:

          The majority of microbeads in cosmetics are made out of polyethylene and
          there have been some estimates from polymer scientists that in a year only
          0.1% of polyethylene would be broken down to its constituents […]. So if
          you continued to produce polyethylene […] then you are obviously going to
          accumulate and accumulate, whereas if you put an organic compound that
          was going to degrade, you would not have that accumulating effect.156

153 Q369 (George Eustice) 154 DEFRA (EIM0034), Neal’s Yard Remedies
(EIM0036), Veolia (EIM0039), L’Oreal (EIM0043), Yorkshire Water
(EIM0052), Cornwall Plastic Pollution Coalition (EIM0054) 155 Q3 156 As
above

24 Environmental impact of microplastics

Neal’s Yard Remedies have never used microbeads in their products and
argue that the quality of their products does not suffer because of
this.157 They argue:

          There is a plentiful array of highly effective natural sustainable options that
          have a hugely reduced impact on the environment. These alternatives, such as
          ground apricot kernels, can provide additional income to suppliers.158

Furthermore, they highlight that many of their customers are “reassured
that they are not contributing to the growing problem of microplastic
pollution when using \[their\] products.”159

56. Businesses in the cosmetics industry have told us that they are
    identifying natural alternatives for their products which can meet
    environmental and health standards.160 However, the reformulation of
    alternative ingredients can take time. For example, Johnson &
    Johnson, said, “\[we\] have been conducting environmental safety
    assessments of alternatives \[to\] ensure that the alternatives we
    choose are safe and environmentally sound \[…\].”161 Similarly,
    L’Oreal noted that alternatives “requires the analysis &
    identification \[…\] that can meet many criteria (including human &
    environmental safety, efficacy, sustainable sourcing of the raw
    material and overall costs).”162 Dr Laurent Gilbert, L’Oreal, said:

          The standard time to develop a product is between 12 to 18 months, which
          is the standard timeframe when you have to redo everything regarding the
          stability of the product, regarding the microbiology protection of the product,
          compatibility with the packaging.163

Businesses have also told us that microbeads will not be switched for
biodegradable plastics.164 Instead, Ian Malcomber, Unilever, told us
that they had “reformulated \[…\] into silica, which is effectively the
same as quartz, \[a major component of sand and\] a mineral that you
would find in the environment. \[…\] The other alternatives we moved
into was ground walnut shells and cornmeal in our products.”165

57. We also heard that businesses were applying sustainable sourcing
    strategies when seeking alternative ingredients. Dr Laurent Gilbert,
    L’Oreal, said, “We have a commitment to have all the ingredients
    from natural origin that we are using sustainably sourced.”166
    Similarly, Ian Malcomber, Unilever, said, “\[In\] 2010 Unilever
    produced a Unilever sustainable living plan, which is a set of
    sustainability commitments across a number of areas. That does
    include sustainable sourcing.”167

58. Microbeads have been particularly controversial because of the
    existence of several viable alternatives which do not have the same
    environmental impacts. Where those alternatives are natural in
    origin, companies should ensure they are sustainably 157 Neal’s Yard
    Remedies (EIM0036) 158 Neal’s Yard Remedies (EIM0036) 159 As above
    160 Q484 161 Johnson & Johnson (EIM0042) 162 L’Oreal (EIM0043) 163
    Q448 164 Q461 165 Q420 166 Q484 167 As above

                                                         Environmental impact of microplastics   25

sourced. Where they are artificially produced, they should ensure that
appropriate environmental impact assessments are undertaken. The
Government should include these conditions in its legislation.

Transitional issues (labelling) 59. The elimination of microbeads in
cosmetics has been the central focus of a number of recent campaigns,
including Beat the Microbead, an international coalition of NGOs working
to get companies to remove plastic microbeads from products such as
facial scrubs and toothpastes.168 Two Dutch NGOs, the North Sea
Foundation and the Plastic Soup Foundation, launched a smartphone
application in 2012 which allows consumers to scan bar codes of cosmetic
products to check if they contain microbeads.169

60. There were disagreements between the NGOs and businesses regarding
    the voluntary commitments, in particular, the transparency of
    labelling. For example, the Dove Original Stick Antiperspirant
    deodorant, a Unilever brand, listed polyethylene in its
    ingredients.170 Ian Malcomber, Unilever, argued that this was
    “polyethylene in its liquid form; in its soluble form”171 which
    “will be a lot more degradable and will not have the same physical
    effects \[as a solid plastic form\].”172 Dr Masscheleyn, Procter &
    Gamble, highlighted that the labelling of polyethylene was covered
    by law:

          [Procter and Gamble] follow the regulation, and one of the requirements is
          to label according to the international nomenclature for cosmetic ingredients.
          Plastic microbeads are described as polyethylene. The products that contain
          plastic microbeads have clearly labelled on the back “polyethylene.”173

61. Businesses believed it was unnecessary to add microbead labelling as
    they were already phasing-out microbeads in their products. Dr
    Masscheleyn, Procter & Gamble, said:

          For [Procter & Gamble], which has committed to be out of plastic microbeads
          and to put in resources to accelerate our plan as much as we can, therefore, I
          do not see a need to label.174

Ian Malcomber, Unilever, added:

          The labelling of “containing microplastics” does not really apply to [Unilever].
          I think we are very public on our website of our commitment to get out of
          microplastic beads and we have succeeded in that.175

However, responding to the suggestion that products should clearly state
they contained microbeads, Dr Chris Flower, CTPA, said:

          [That] would be effectively to post an advert saying, ‘Do not buy my product’”.176

168 Marine Conversation Society (EIM0025) 169 Thomas Stanton (EIM0033)
170 Q409 171 Q413 172 Q414 173 Q410 174 Q406 175 Q407 176 Q405

26 Environmental impact of microplastics

62. Consumers should be able to tell whether the products they are
    buying contain microbeads. The industry is failing to label products
    containing microbeads clearly, and the companies we heard from were
    reluctant to change their labelling practices. Regulations for
    labelling are also failing to provide consumers with the clarity
    they need. In the absence of meaningful action by companies to label
    their products more clearly, we recommend that the Government
    introduces a clear labelling scheme for microbeads so that consumers
    may choose whether they wish to buy products containing microbeads.
    . The industry told us that transparent labelling of microbeads
    would amount to an invitation not to buy products with microbeads
    in. Transparency to date has been provided by initiatives by NGOs.
    We recognise that this is a transitional issue and that there are
    costs associated with changing labels. Our preferred outcome would
    be a national ban on microbeads in cosmetics and toiletries by the
    end of next year. Failing that, we recommend that the Government
    introduce a clear labelling scheme for microbeads during the
    transitional period of a voluntary phase out to provide transparency
    for customers.

                                                        Environmental impact of microplastics   27

4 Microplastic prevention and solutions Tackling microplastic pollution
63. Dr van Sebille, Imperial College, argued that tackling microplastic
pollution is about identifying intervention points, “where it is most
efficient to intervene and where it is most efficient to do something
about the release.”177 Professor Thompson said:

          Plastics are persistent contaminants; even if it were feasible to cease inputs of
          plastic debris to the oceans with immediate effect, the quantity of microplastic
          would continue to increase because of the fragmentation of larger items that
          are already present in the environment. Hence research is needed to fully
          understand the abundance, distribution and potential environmental impacts
          of microplastics. However, it is also important to move toward the solutions
          which are already widely recognised.178

The BPF argued, “preventing further plastic from entering the ocean is
key to dealing with this issue as removing existing plastics would not
prevent future problems and would be expensive.”179 Similarly, Professor
Richard Thompson argued that “the fragmentation of larger items of
debris is likely to be a more important source of microplastics than the
direct release of microbeads from cosmetics.”180 He said:

          The overarching solution is to ensure greater quantities of plastic waste are
          captured in recycling streams; this will reduce their potential to become litter
          (large items of plastic litter become microplastic).181

64. The Marine Conservation Society argued that filtering microplastics
    from the marine environment would be “extremely challenging,
    expensive and impractical.” They suggested:

          Stopping the microplastics at source is undoubtedly and significantly more
          efficient than trying to remove it once in the aquatic environment.182

Similarly, Fauna & Flora International’s Microplastic Programme has
focussed on those sources of microplastic that they deemed easily
preventable. They state:

          [Although] secondary microplastics may represent a larger source of input
          than primary microplastic ingredients, we are motivated to work on the
          latter […] because we would consider the potential solution to the former (e.g.
          harmonised waste management reform) to be more vastly longer-term than
          the latter (changing corporate decision-making).183

Neal’s Yard Remedies, argued that “removing plastics from personal care
products is the most efficient and cost-effective way of stopping this
pollution. ‘End of pipe’ solutions

177 Q40 178 Plymouth University (EIM0011) 179 British Plastics
Federation (EIM0041) 180 Q263 181 Plymouth University (EIM0011) 182
Marine Conversation Society (EIM0025) 183 Fauna & Flora International
(EIM0016)

28 Environmental impact of microplastics

through upgrading of sewage treatment plants would be far more
costly.”184 Veolia UK, a wastewater management service agreed that it
would be more effective to stop microplastic pollution at the source
than through wastewater treatment.185 This is because the wastewater
plants are not equipped to filter out microplastics and equipping the
plants with ultrafine filters would be costly. In addition it would not
eliminate the problem, as not all waste water passes through a plant.186

65. The most effective solution to tackling microplastic pollution in
    the marine environment is to tackle it at the source. This means
    stemming the flow of primary microplastics, and general plastics,
    entering the marine environment in the first place. We heard that
    taking action to tackle ocean plastic pollution at source is the
    best strategy, and we believe that this is also the most feasible
    option in the short-term.

Waste and water treatment solution 66. Currently waste water treatment
plants are not designed to retain microplastics, and the resulting
sewage effluent can carry fibres and microbeads out to rivers, lakes,
estuaries and the sea.187 A Eunomia report for the European Commission
found that the percentage of microplastic particles captured in waste
water treatment sewage sludge ranges from 65% to 100%.188 The British
Plastics Federation said:

          All countries in the world need to have adequate waste management facilities
          to deal with the waste they are producing and ensure it is used to its maximum
          value. Ensuring education on litter takes place globally will also be essential.189

67. Surface water treatment processes generally have three stages of
    treatment which includes coagulation, flocculation and filtration.
    These processes do not specifically monitor for microplastics,
    however, they may coincidentally capture extremely small
    particles.190 United Utilities stated that, for drinking water,
    particles over 0.5µm were filtered out through this process so
    microplastics above this size will not enter drinking water.191
    Following these processes, wastewater and sludges from the water
    treatment plant are treated and then the waste streams are
    subsequently discharged to sewer, local water course or the sludge
    is thickened and spread on land or sent to sewer.192

68. In relation to sewage sludge containing microplastics washing back
    into the river, Severn Trent Water highlighted:

          100% of the sludge bioproduct generated by Severn Trent Water is safely
          recycled to land. Whilst there are no specific measures targeted at preventing
          microplastics in sludge from washing back into rivers, there is an industry

184 Neal’s Yard Remedies (EIM0036) 185 Veolia (EIM0039) 186 As above 187
Veolia (EIM0039), United Utilities (EIM0047), Northumbrian Water
(EIM0049), Thames Water (EIM0051), Yorkshire Water (EIM0052), Water UK
(EIM0055) 188 DEFRA (EIM0034) 189 British Plastics Federation (EIM0041)
190 Water UK (EIM0055) 191 United Utilities (EIM0047) 192 Plastic Oceans
(EIM0021), Water UK (EIM0055)

                                                                   Environmental impact of microplastics         29

          wide code of practice [the DEFRA published Code of Practice for Agricultural
          Use of Sewage Sludge] in place that covers the recycling of bioproduct to land.
          This code covers protection of the aquatic environment.193

Dr van Sebille, Imperial College London, identified a study of water
treatment plants in the Chicago area, and suggested sand filters may be
effective in capturing both fibres and microbeads.194 Thomas Maes,
CEFAS, did a study on the sewage treatment works in Crossness which
looked at the incoming water, the outgoing water and the sediments in
front of the pipe to ascertain the amount of microplastics and it found
an “almost 85% reduction \[in microplastics\].”195 However, Dr van
Sebille added:

          A sand filter might work very well, but the problem is once you go into that, at
          some point you have to backflush your sand filter, you have to push it back, and
          then what do you do with that sludge?196

Sludge was also a concern from Anglian Water, which stated that:

          This sludge forms a vital biosolid product that is recycled to agricultural land.
          Increased concentrations of plastics in this product would not just return
          the plastics back to the environment through spreading, but could also raise
          concerns about quality of the biosolid product and therefore put at risk a
          valuable source of nutrients for the agricultural sector.197

69. We received evidence from water companies that there are no
    specifically designed sewage treatment processes to capture very
    small particles.198 Many plants, such as Southern Water, have
    methods of capturing plastics above 6mm, which will not be able to
    further degrade into microplastics.199 There are also limits set
    relating to treatment processes for other organic and inorganic
    solids.200

70. Furthermore, all water companies highlighted that there is currently
    no agreed methodology for taking plastic pollution measurements.
    South West Water said, “We do not measure plastic content in our
    sewage treatment works influent or in treated effluent, and are not
    currently required by any regulations to do so.”201 Yorkshire water
    reiterated this and said “Currently our sewerage systems and
    treatment processes are not designed to remove microplastics and we
    are not regulated by the Environment Agency to do so.”202 This was
    reaffirmed by Dr Foster, Marine Conservation Society, who said,
    “When I talked to the Environment Agency they do not monitor
    \[microplastics\]. There are no permissions required. You can
    effectively emit as much pellets as you like legally as far as I
    understand from the Environment Agency, because it is not considered
    a hazardous substance.”203 We wrote to The Environment Agency who
    stated that they:

193 Severn Trent Water (EIM0045) 194 Q16 195 Q332 196 Q16 197 Anglian
Water (EIM0046) 198 Veolia (EIM0039), Wessex Water (EIM0044), United
Utilities (EIM0047), Northumbrian Water (EIM0049), Thames Water
(EIM0051), Yorkshire Water (EIM0052), Water UK (EIM0055) 199 Southern
Water (EIM0048) 200 As above 201 South West Water (EIM0050) 202
Yorkshire Water (EIM0052) 203 Q97

30 Environmental impact of microplastics

         [Do] not currently explicitly consider micro-plastic in its environmental
         permits to discharge liquid effluent or waste water to surface water or onto the
         ground. […] Regulation at end of pipe would be premature before there is a
         better understanding of sources and environmental impacts of microplastics
         and the costs and benefits of supply-side or end-of-pipe controls. There is a
         need for better information on the source apportionment of microplastics in
         the environment and potential effectiveness of control measures.204

71. Water UK said, “the water industry has no current experience or
    technologies to separate out microplastics \[…\] and treatment of
    micro plastics by the water industry has never been explored.”205
    They argued that a key challenge is to separate the microplastics
    from the organic content on available operational scale and at
    reasonable cost. There are significant investment needs to add any
    additional filtration to pump effluent or sludges against a series
    of fine mesh.

72. Similarly, the Government argues that installing filtration systems
    will be an expensive option. George Eustice, Minister at DEFRA,
    said:

         Filtration goes through various phases and filters out more and more of
         the plastics. Frankly, it is incredibly difficult and a big undertaking to filter
         microbeads out, because you need quite expensive sand filtration systems. It
         is therefore probably easier to try to stop putting them in the sewer in the first
         place, rather than putting them in and trying to work out how to take them
         out.206

However, the Government told us that they had not been in contact with
any water companies but were open to the suggestion. George Eustice,
Minister at DEFRA, said:

         We have not [called a summit of water companies]. […] We will want to digest
         this evidence digest and take it on board to see whether lessons can be learned.
         If there are issues that we should build into the pricing plans that Ofwat is
         looking at in the future, we can do that, if it can be done in a cost-effective
         way.207

73. We heard that prevention at source by reducing the number of
    microplastics flushed into the oceans is most viable. However, there
    are also opportunities to capture microplastics through effective
    waste and water sewage treatment processes which currently do not
    require the monitoring of microplastics. We recognise the heavy
    investment needed in this area, and that there is difficulty in
    filtering microplastics. Therefore, we recommend that the Government
    and Environment Agency work with Water Companies to understand what
    feasible options there are to monitor and ultimately reduce
    microplastic pollution.

204 Environment Agency (EIM0056) 205 Water UK (EIM0055) 206 Q327 207
Q340

                                                       Environmental impact of microplastics   31

Conclusions and recommendations Microplastic Pollution 1. There is
significant public concern around microbeads, however, they make up a
small proportion of total microplastic pollution. The wider issue of
microplastic pollution cannot be set aside once microbeads have been
dealt with. We recognise the research is still relatively new and
subject to uncertainties. We recommend that the Government work towards
a systematic strategy for researching and mitigating sources of
microplastic pollution. We suggest that synthetic fibres and tyres are
two sources that should be examined at an early stage. (Paragraph 13)

2.  The impacts on the marine environment are still being researched.
    However, there is evidence that there is scope for significant harm
    to the marine environment. Microplastic pollution is potentially
    more environmentally damaging than larger pieces of plastic because
    small pieces of plastic are more likely to be eaten by wildlife and
    have a greater surface area which can transfer chemicals to and from
    the marine environment. (Paragraph 20)

3.  There is little evidence on potential human health impacts of
    microplastic pollution. What evidence there is suggests that dietary
    exposure is likely to be low. Further research in this area is
    underway and is clearly required. The Government should set out a
    timescale within which it will publish an assessment of the
    potential health impacts and any measures it intends as a response.
    (Paragraph 26)

4.  The Committee heard that studies estimating the economic costs of
    microplastic pollution vary widely. As with the health impacts, the
    Government should set out a timescale in which it intends to produce
    a more accurate assessment. It should also ensure that microplastics
    are treated as an economic issue – within the scope of its food and
    farming strategy - as well as an environmental one. (Paragraph 29)

5.  It is important to address microplastic pollution as a transnational
    problem and to understand that plastic in the ocean is in constant
    motion. The Government should continue international cooperation
    despite uncertainties arising from the EU referendum. It is clear
    that international action is needed. We recommend the Government
    maintain existing cooperation with international partners in
    tackling microplastic pollution. Up to now, NGOs have taken the lead
    role in addressing this issue. However, this is unsustainable given
    the increasing costs and demands relating to microplastic pollution.
    As more evidence emerges about the impact of microplastic pollution,
    the Government must take on that role. (Paragraph 33)

Microbeads 6. Experts have estimated that around 680 tonnes of plastic
microbeads are used in the UK every year. A single shower can result in
100,000 plastic particles entering the sewage system. Microplastics from
cosmetic products are believed to make up 0.01% to 4.1% of the total
microplastics entering the marine environment. The fact that

32 Environmental impact of microplastics

      this accounts for a small percentage of total microplastic pollution in the sea does
      not stop it being a significant and avoidable environmental problem, and possibly a
      low-hanging fruit in the context of tackling wider plastic pollution. (Paragraph 39)

7.  We welcome the commitment by a section of the cosmetics industry to
    phase out microbeads. However, the commitment is not universal, and
    there are inconsistencies in approach. Some companies will not phase
    out until 2020 and, since this commitment is voluntary, some
    companies may not phase out at all. Voluntary action alone will not
    be adequate to tackle the challenges of microbeads, and believe that
    a legislative ban would be beneficial in bringing greater
    consistency in the industry. (Paragraph 45)

8.  Legislative action would have several advantages for consumers and
    the industry over the current, voluntary, approach to microbeads. It
    would be universal, ensuring consumer confidence and preventing
    responsible companies being undercut. It would ensure consistent
    definitions were used by all industry participants. It would also
    send a message that Government was serious about addressing the
    wider issue of microplastic pollution. In working towards such
    legislation, the Government should consult widely on implementation
    to ensure that the main risk - smaller companies being
    disadvantaged - is mitigated. (Paragraph 52)

9.  Microbead pollution does not respect national borders. Legislative
    measures to prevent the sale or manufacture of microbeads will be
    more effective if undertaken on a transnational basis. The last
    Government recognised this, and had been working towards EU
    legislation by the middle of next year. The outcome of the
    Referendum on EU Membership means that work will now be taken
    forward by other countries and the new Government, and the UK will
    have much less influence over it. However, the benefits of
    cross-border consistency remain. (Paragraph 53)

10. We recommend that the Government introduce a legislative ban on the
    use of plastic microbeads in cosmetics and other toiletries. The
    legislation should follow the principles set out by Fauna & Flora
    International around universality and consistency. The Government
    should ensure consistency with international legislation –
    particularly with whatever EU measures are introduced – wherever
    possible, though we regret that this means the UK will have less
    control over the specific design of the ban. (Paragraph

    54. 

11. Microbeads have been particularly controversial because of the
    existence of several viable alternatives which do not have the same
    environmental impacts. Where those alternatives are natural in
    origin, companies should ensure they are sustainably sourced. Where
    they are artificially produced, they should ensure that appropriate
    environmental impact assessments are undertaken. The Government
    should include these conditions in its legislation. (Paragraph 58)

12. Consumers should be able to tell whether the products they are
    buying contain microbeads. The industry is failing to label products
    containing microbeads clearly, and the companies we heard from were
    reluctant to change their labelling practices. Regulations for
    labelling are also failing to provide consumers with the clarity
    they need. In the absence of meaningful action by companies to label
    their products more clearly, we recommend that the Government
    introduces a clear labelling

                                                     Environmental impact of microplastics   33

    scheme for microbeads so that consumers may choose whether they wish
    to buy products containing microbeads. The industry told us that
    transparent labelling of microbeads would amount to an invitation
    not to buy products with microbeads in. Transparency to date has
    been provided by initiatives by NGOs. We recognise that this is a
    transitional issue and that there are costs associated with changing
    labels. Our preferred outcome would be a national ban on microbeads
    in cosmetics and toiletries by the end of next year. Failing that,
    we recommend that the Government introduce a clear labelling scheme
    for microbeads during the transitional period of a voluntary phase
    out to provide transparency for customers. (Paragraph 62)

Microplastic prevention and solutions 13. The most effective solution to
tackling microplastic pollution in the marine environment is to tackle
it at the source. This means stemming the flow of primary microplastics,
and general plastics, entering the marine environment in the first
place. We heard that taking action to tackle ocean plastic pollution at
source is the best strategy, and we believe that this is also the most
feasible option in the short- term. (Paragraph 65)

14. We heard that prevention at source by reducing the number of
    microplastics flushed into the oceans is most viable. However, there
    are also opportunities to capture microplastics through effective
    waste and water sewage treatment processes which currently do not
    require the monitoring of microplastics. We recognise the heavy
    investment needed in this area, and that there is difficulty in
    filtering microplastics. Therefore, we recommend that the Government
    and Environment Agency work with Water Companies to understand what
    feasible options there are to monitor and ultimately reduce
    microplastic pollution. (Paragraph 73)

34 Environmental impact of microplastics

Formal Minutes Wednesday 20 July 2016

                                         Members present.

                                   Mary Creagh, in the Chair:

                             Geraint Davies        Kerry McCarthy
                             Caroline Lucas

Draft Report (Environmental Impact of Microplastics), proposed by the
Chair, brought up and read.

Paragraphs 1 to 73 read and agreed to.

Summary read and agreed to.

Resolved, That the Report be the Fourth Report of the Committee to the
House.

Ordered, That the Chair make the Report to the House.

Ordered, That embargoed copies of the Report be made available, in
accordance with the provisions of Standing Order No. 134.

                                                                [The Committee adjourned

                                                      Environmental impact of microplastics   35

Witnesses The following witnesses gave evidence. Transcripts can be
viewed on the inquiry publications page of the Committee’s website.

Monday 9 May 2016 Question number

Professor Tamara Galloway, Professor of Ecotoxicology, University of
Exeter, Dr Erik van Sebille, Faculty of Natural Sciences, the Grantham
Institute for Climate Change, Imperial College, and Professor Frank
Kelly, Professor of Environmental Health, King’s College London Q1–64

Tuesday 24 May 2016

Francisco Morcillo, Public & Industrial Affairs Manager, British
Plastics Federation, Dr Laura Foster, Head of Pollution, Marine
Conservation Society, Sarah Baulch, Oceans Campaigner, Environmental
Investigation Agency, and Daniel Steadman, Marine Plastics Projects
Manager, Fauna & Flora International Q65–164

Wednesday 8 June 2016

John Chave, Director General, Cosmetics Europe, and Dr Chris Flower,
Director General, The Cosmetics, Toiletry and Perfumery Association
Q165–262 Professor Richard Thompson, Professor of Marine Biology,
Plymouth University Q263-286

Tuesday 14 June 2016

George Eustice MP, Minister of State for Farming, Food and the Marine
Environment, DEFRA, Dr Gemma Harper, Deputy Director for Marine and
Chief Social Scientist, DEFRA, and Thomas Maes, National & International
Monitoring Programmes Co-ordinator, Centre for Environment Fisheries and
Aquaculture Science Q287–400

Wednesday 29 June 2016

Dr Laurent Gilbert, Director for International Development of Advanced
Research at L’Oréal, Ian Malcomber, Science Director at Unilever, and Dr
Patrick Masscheleyn, Director R&D Beauty Care and Global Product
Stewardship, Procter & Gamble Q401–511

36 Environmental impact of microplastics

Published written evidence The following written evidence was received
and can be viewed on the inquiry publications page of the Committee’s
website.

EIM numbers are generated by the evidence processing system and so may
not be complete. 1 5 Gyres Institute (EIM0017) 2 Anglian Water (EIM0046)
3 British Plastics Federation (EIM0041) 4 British Plastics Federation /
PlasticsEurope (EIM0015) 5 British Retail Consortium (EIM0037) 6 Brunel
University, London (EIM0028) 7 CEFAS (EIM0023) 8 CHEM Trust (EIM0010) 9
Cornwall Plastic Pollution Coalition (EIM0054) 10 Cosmetics Europe
(EIM0032) 11 DEFRA (EIM0034) 12 Dr Dannielle Green (EIM0040) 13 Dr
Michael Shaver (EIM0005) 14 Dr Natalie Welden (EIM0003) 15 Environment
Agency (EIM0056) 16 Environmental Investigation Agency (EIA) (EIM0022)
17 Fauna & Flora International (EIM0016) 18 Fidra (EIM0012) 19 Grantham
Institute (EIM0027) 20 Greenpeace UK, the Environmental Investigation
Agency, Fauna & Flora International, and the Marine Conservation Society
(EIM0020) 21 Johnson & Johnson (EIM0042) 22 Keep Britain Tidy (EIM0029)
23 King’s College London (EIM0014) 24 L’Oréal (EIM0043) 25 Marine
Conservation Society (EIM0025) 26 Mr Shay Fennelly (EIM0004) 27 Neal’s
Yard Remedies (EIM0036) 28 Northumbrian Water (EIM0049) 29 Novamont
(EIM0035) 30 Plastic Oceans (EIM0021) 31 Plymouth Marine Laboratory
(EIM0008) 32 Plymouth University (EIM0011) 33 Professor Richard Thompson
(EIM0053)

                                                   Environmental impact of microplastics   37

34 Rame Peninsula Beach Care (EIM0007) 35 Richard Shirres (EIM0031) 36
Royal Society of Chemistry (EIM0019) 37 Severn Trent Water (EIM0045) 38
South West Water (EIM0050) 39 Southern Water (EIM0048) 40 Thames Water
(EIM0051) 41 The Cosmetic Toiletry & Perfumery Association (EIM0038) 42
Thomas Stanton (EIM0033) 43 United Utilities (EIM0047) 44 University of
Exeter (EIM0009) 45 Veolia (EIM0039) 46 Water UK (EIM0055) 47 Wessex
Water (EIM0044) 48 World Animal Protection UK (EIM0013) 49 Yorkshire
Water (EIM0052)

38 Environmental impact of microplastics

List of Reports from the Committee during the current Parliament All
publications from the Committee are available on the publications page
of the Committee’s website.

The reference number of the Government’s response to each Report is
printed in brackets after the HC printing number.

Session 2015–16

First Report The Airports Commission Report: Carbon HC 389 Emissions,
Air Quality and Noise Second Report The Future of the Green Investment
Bank HC 536 Third Report EU and UK Environmental Policy HC 537 First
Special Report Local Nature Partnerships: Government HC 377 Response to
the Committee’s Twelfth Report of Session 2014–15 Second Special Climate
change adaptation: Government HC 590 Report Response to the Committee’s
Tenth Report of Session 2014–15

Session 2016–17

First Report Soil health HC 180 Second Report Flooding: Cooperation
across Government HC 183 \|

Govt. response

``` r
docs[[2]] %>%
  #(str_detect(text, "Conclusions")) %>%
  select(text) %>%
  knitr::kable()
```

| text             |
|:-----------------|
| House of Commons |

Environmental Audit Committee

Environmental impact of microplastics: Government Response to the
Committee’s Fourth Report of Session 2016–17 Fifth Special Report of
Session 2016–17

Ordered by the House of Commons to be printed 8 November 2016

                                                        HC 802
                                   Published on 14 November 2016
                            by authority of the House of Commons

Environmental Audit Committee The Environmental Audit Committee is
appointed by the House of Commons to consider to what extent the
policies and programmes of government departments and non-departmental
public bodies contribute to environmental protection and sustainable
development; to audit their performance against such targets as may be
set for them by Her Majesty’s Ministers; and to report thereon to the
House. Current membership Mary Creagh MP (Labour, Wakefield) (Chair)
Peter Aldous MP (Conservative, Waveney) Caroline Ansell MP
(Conservative, Eastbourne) Dr Thérèse Coffey MP (Conservative, Suffolk
Coastal) \[ex-officio\] Geraint Davies MP (Labour (Co-op), Swansea West)
Glyn Davies MP (Conservative, Montgomeryshire) Margaret Greenwood MP
(Labour, Wirral West) Luke Hall MP (Conservative, Thornbury and Yate)
Peter Heaton-Jones MP (Conservative, North Devon) Mr Peter Lilley MP
(Conservative, Hitchin and Harpenden) Caroline Lucas MP (Green Party,
Brighton, Pavilion) Kerry McCarthy MP (Labour, Bristol East) John Mc
Nally MP (Scottish National Party, Falkirk) Dr Matthew Offord MP
(Conservative, Hendon ) Dr Alan Whitehead MP (Labour, Southampton, Test)

The following Members were members of the Committee during the inquiry:
Jo Churchill MP (Bury St Edmunds); Zac Goldsmith MP (Conservative,
Richmond Park); Carolyn Harris MP (Labour, Swansea East); Rebecca Pow MP
(Taunton Deane); Rory Stewart MP (Conservative, Penrith and The Border)
\[ex-officio\] Powers

The constitution and powers are set out in House of Commons Standing
Orders, principally in SO No 152A. These are available on the internet
via www.parliament.uk. Publication Committee reports are published on
the Committee’s website at www.parliament.uk/eacom and in print by Order
of the House. Evidence relating to this report is published on the
inquiry publications page of the Committee’s website. Committee staff
The current staff of the Committee are David Slater (Clerk), Lauren
Boyer (Second Clerk), Tom Leveridge (Senior Committee Specialist), Tom
Glithero (Committee Specialist), Emily Purssell (Committee Researcher),
Ameet Chudasama (Senior Committee Assistant), Baris Tufekci (Committe
Assistant), and Nicholas Davies (Media Officer). Contacts All
correspondence should be addressed to the Clerk of the Environmental
Audit Committee, House of Commons, London SW1A 0AA. The telephone number
for general enquiries is 020 7219 5776; the Committee’s email address is
<eacom@parliament.uk>.

                         Government Response to the Committee’s Fourth Report of Session 2016–17   1

Fifth Special Report The Environmental Audit Committee published its
Fourth Report of Session 2016–17, Environmental impact of microplastics
(HC 179), on 24 August 2016. The Government’s response was received on
26 October 2016 and is appended to this report.

Appendix: Government response Introduction The Government welcomes the
Environmental Audit Committee’s (EAC) report on ‘The Environmental
Impact of Microplastics’. The UK’s vision, set out in the Marine Policy
Statement, is for clean, healthy, safe, productive and biologically
diverse seas and oceans. Tackling marine litter, in all its guises, is a
key aspect of achieving this vision and meeting our promise to be the
first generation ever to leave the environment in a better state than it
inherited.

The UK’s Marine Strategy Part Three: UK programme of measures, published
in December 2015, sets out a comprehensive set of measures to address
marine litter. Some of these measures address microplastics directly
while others contribute indirectly by removing, or avoiding the release
of, larger plastic particles, preventing their degradation into
microplastics. The Strategy also recognised that there are gaps in our
knowledge and that further work was needed to better understand marine
litter and its impacts.

One of these gaps related to the harm caused by microplastics in the
marine environment. We will shortly be publishing a Defra-funded report
which adds to the body of evidence demonstrating the potential harm that
microplastics, such as microbeads, can cause. Laboratory experiments
showed:

     •    Microplastics can cause physical harm to marine worms, but only at
          concentrations comparable to heavily contaminated shorelines. They remain
          in the gut and are subjected to extensive digestion with no nutritional benefit,
          resulting in energetic cost.

     •    Microplastics can transfer along a simple food chain from a mussel to a crab. The
          crabs then release the microplastics back into the environment via defecation.

     •    Chemical additives in plastic may be of greater harm than the pollutants from
          seawater that stick to microplastics.

     •    Microplastics accumulate pollutants from seawater but this is dependent on the
          plastic involved and the pollutant. These pollutants can desorb (be released)
          from microplastics into the guts of marine organisms. However this is unlikely
          to make an important contribution to the overall burden of the pollutant
          compared to the amount of chemical transferred to the organism via normal
          ingestion of contaminated food or directly from contaminated seawater.

Defra’s Chief Scientist has stated that “it would be extraordinarily
difficult to directly measure the effect of microbeads on the marine
environment as a whole. Since microbeads

2 Government Response to the Committee’s Fourth Report of Session
2016–17

are a form of microplastic, evidence concerning microplastics can be
used to provide information about the potential environmental impacts of
microbeads. We also know that microplastics do not biodegrade
significantly and therefore accumulate in the marine environment. Once
released into the environment it is impossible to recover microbeads or
remediate the effects that could subsequently emerge. In spite of
scientific uncertainty the risk of effects is high. This risk also needs
to be considered in the context of other stresses experienced by marine
organisms including other forms of historical pollution and ocean
acidification. Adding stresses from microbeads increases the overall
risk. It is therefore sensible to minimise the disposal of microbeads to
the marine environment by, whenever possible, using less harmful
alternatives.”

This is why on 3 September 2016 the Government announced plans to ban
the sale and manufacture of cosmetics and personal care products
containing microbeads which may cause harm to the marine environment. At
the same time evidence will be gathered on the extent of the
environmental impacts of microbeads found in other products, such as
domestic and industrial cleaning products, before considering what more
can be done in future to tackle these and other plastics which enter the
marine environment.

Below we set out the 11 recommendations of the EAC report in bold,
followed by our response to each point.

Microplastic Pollution 1. There is significant public concern around
microbeads, however, they make up a small proportion of total
microplastic pollution. The wider issue of microplastic pollution cannot
be set aside once microbeads have been dealt with. We recognise the
research is still relatively new and subject to uncertainties. We
recommend that the Government work towards a systematic strategy for
researching and mitigating sources of microplastic pollution. We suggest
that synthetic fibres and tyres are two sources that should be examined
at an early stage. (Paragraph 13)

We agree researching and addressing sources of microplastic pollution is
a priority. Defra has long recognised the importance of this issue and
funded some of the earliest research into the harmful effects of
microplastics on the marine environment. This area of research is also
highlighted in our forthcoming Evidence Action Plan, which sets out key
evidence gaps and priorities for the Defra group and how it will seek to
address them. It is important to note that, as mentioned in the EAC
inquiry, the greatest source of microplastics is from the fragmentation
of larger plastic debris. That is why Government has already put in
place a wide range of measures to tackle plastic litter in our oceans.
These are set out in our Marine Strategy Part Three: UK Programme of
Measures. Recent actions include the introduction of the 5p carrier bag
charge last year. Early indications are that this will lead to 6 billion
fewer single-use plastic carrier bags being issued by the seven largest
supermarkets, for which we have comparable data, in the first year of
the charge. We are also currently developing a National Litter Strategy
for England, with the aim of achieving a substantial reduction in litter
and littering. This will help to reduce the amount of plastic reaching
our rivers and seas.

                        Government Response to the Committee’s Fourth Report of Session 2016–17   3

Our plans to ban microbeads in cosmetics and personal care products will
be informed by a formal consultation later this year. At the same time,
evidence will be gathered on the extent of the environmental impacts of
microbeads found in other products, such as domestic and industrial
cleaning products, before considering what more can be done in future to
tackle other plastics which enter the marine environment.

2.  There is little evidence on potential human health impacts of
    microplastic pollution. What evidence there is suggests that dietary
    exposure is likely to be low. Further research in this area is
    underway and is clearly required. The Government should set out a
    timescale within which it will publish an assessment of the
    potential health impacts and any measures it intends as a response.
    (Paragraph 26)

As the EAC has stated, there is little evidence on the impact to human
health of microplastic pollution. Although some marine animals may
swallow microplastics, in the case of fish the digestive tracts are
usually removed before human consumption. Over the next year the Chief
Medical Officer of the Department of Health will be reviewing the
effects on health of pollution of several kinds including microplastics.

3.  The Committee heard that studies estimating the economic costs of
    microplastic pollution vary widely. As with the health impacts, the
    Government should set out a timescale in which it intends to produce
    a more accurate assessment. It should also ensure that microplastics
    are treated as an economic issue—within the scope of its food and
    farming strategy—as well as an environmental one. (Paragraph 29)

There has been little assessment of the potential economic consequences
of increased microplastics in the ocean. However an economic analysis
demonstrated that there are potential costs associated with
microplastics, for example to the aquaculture sector in the UK.
Government will consider any future evidence on the economic impact of
microplastics. The best way to address this economic impact therefore is
to stop microplastics entering the marine environment in the first
place.

4.  It is important to address microplastic pollution as a transnational
    problem and to understand that plastic in the ocean is in constant
    motion. The Government should continue international cooperation
    despite uncertainties arising from the EU referendum. It is clear
    that international action is needed. We recommend the Government
    maintain existing cooperation with international partners in
    tackling microplastic pollution. Up to now, NGOs have taken the lead
    role in addressing this issue. However, this is unsustainable given
    the increasing costs and demands relating to microplastic pollution.
    As more evidence emerges about the impact of microplastic pollution,
    the Government must take on that role. (Paragraph 33)

Marine litter, including microplastic pollution, is a transboundary
problem and international cooperation is essential to address this. The
UK is an active participant in the Oslo and Paris convention for the
protection of the North-East Atlantic (OSPAR) through which we, with
neighbouring countries, have developed and are implementing a Regional
Action Plan (RAP) on marine litter. The RAP sets out a wide range of
actions which include the reduction of key sources of marine litter and
the evaluation of all products and processes that include primary
microplastics. The UK has also played a key role in developing the G7
Nations Action Plan on marine litter which is closely aligned to the
OSPAR RAP.

4 Government Response to the Committee’s Fourth Report of Session
2016–17

Also at the United Nations Environment Assembly of the UN Environment
Programme Second session in May 2016, the United Kingdom worked together
with delegations from other EU Member States to secure an important
resolution to address the issue of marine litter. This included
microplastics.

We are also grateful for the role that NGOs play in addressing this
issue. The UK Government works with, and will continue to work with, a
wide range of NGOs and charities, as well as industry and OGDs, to
tackle microplastic pollution.

Microbeads 5. We welcome the commitment by a section of the cosmetics
industry to phase out microbeads. However, the commitment is not
universal, and there are inconsistencies in approach. Some companies
will not phase out until 2020 and, since this commitment is voluntary,
some companies may not phase out at all. Voluntary action alone will not
be adequate to tackle the challenges of microbeads, and believe that a
legislative ban would be beneficial in bringing greater consistency in
the industry. (Paragraph 45)

On 3 September 2016 the Government announced plans to ban the sale and
manufacture of cosmetics and personal care products containing
microbeads which may cause harm to the marine environment. Our plans
will be informed by a formal consultation later this year. At the same
time, evidence will be gathered on the extent of the environmental
impacts of microbeads found in other products before considering what
more can be done in future to tackle other plastics which enter the
marine environment. This Government action will create a level playing
field for industry, tackle inconsistency and stop new products
containing tiny pieces of plastic from being sold in the UK.

6.  Legislative action would have several advantages for consumers and
    the industry over the current, voluntary, approach to microbeads. It
    would be universal, ensuring consumer confidence and preventing
    responsible companies being undercut. It would ensure consistent
    definitions were used by all industry participants. It would also
    send a message that Government was serious about addressing the
    wider issue of microplastic pollution. In working towards such
    legislation, the Government should consult widely on implementation
    to ensure that the main risk - smaller companies being
    disadvantaged - is mitigated. (Paragraph 52)

We will continue to engage with industry, environmental groups and other
relevant parties to establish how and when a ban could be introduced. In
addition, we will conduct a formal public consultation on our proposals
to ensure the widest possible participation in the design and
implementation of the ban.

7.  Microbead pollution does not respect national borders. Legislative
    measures to prevent the sale or manufacture of microbeads will be
    more effective if undertaken on a transnational basis. The last
    Government recognised this, and had been working towards EU
    legislation by the middle of next year. The outcome of the
    Referendum on EU Membership means that work will now be taken
    forward by other countries and the new Government, and the UK will
    have much less influence over it. However, the benefits of
    cross-border consistency remain. (Paragraph 53)

                        Government Response to the Committee’s Fourth Report of Session 2016–17   5

We hope that our action to ban microbeads will encourage other countries
to take similar measures to ban microbeads. The more countries that
follow the UK’s leadership on this issue, the more effective the action
will be on reducing microplastic pollution. We are already aware that
France and Italy have announced, or are considering, similar bans. As
the EAC panel recognised, the UK and all other EU Member States have
called for the European Commission to come up with proposals to ban
microbeads in cosmetics at an EU level, as part of the EU Circular
Economy Action Plan. Whilst we are part of the EU we will continue to
have full rights and obligations. This means we will continue to
constructively engage on the Circular Economy package, and we will use
our approach to inform the development of these proposals. We expect
these proposals to be developed as part of the 2017 Plastics Strategy.
We will also continue to work with other international partners on
marine litter issues (see item 4 above).

8.  We recommend that the Government introduce a legislative ban on the
    use of plastic microbeads in cosmetics and other toiletries. The
    legislation should follow the principles set out by Fauna & Flora
    International around universality and consistency. The Government
    should ensure consistency with international legislation—
    particularly with whatever EU measures are introduced—wherever
    possible, though we regret that this means the UK will have less
    control over the specific design of the ban. (Paragraph 54)

As part of our consultation, we will engage with Fauna & Flora
International and other relevant organisations to develop the terms of
proposals on a ban. We will also aim to ensure that they are consistent
with whatever EU measures are introduced. The European Commission is
developing proposals for banning microbeads at an EU level and while we
remain a member of the EU we will continue to play an important role in
the development of these proposals.

9.  Microbeads have been particularly controversial because of the
    existence of several viable alternatives which do not have the same
    environmental impacts. Where those alternatives are natural in
    origin, companies should ensure they are sustainably sourced. Where
    they are artificially produced, they should ensure that appropriate
    environmental impact assessments are undertaken. The Government
    should include these conditions in its legislation. (Paragraph 58)

Manufacturers are exploring natural alternatives, including nut shells,
salt and sugar, which have the same exfoliating properties without
posing a threat to the environment. Such alternatives will need to
undergo appropriate safety and efficacy testing and environmental impact
and risk assessments.

10. Consumers should be able to tell whether the products they are
    buying contain microbeads. The industry is failing to label products
    containing microbeads clearly, and the companies we heard from were
    reluctant to change their labelling practices. Regulations for
    labelling are also failing to provide consumers with the clarity
    they need. In the absence of meaningful action by companies to label
    their products more clearly, we recommend that the Government
    introduces a clear labelling scheme for microbeads so that consumers
    may choose whether they wish to buy products containing microbeads.
    The industry told us that transparent labelling of microbeads would
    amount to an invitation not to buy products with microbeads in.
    Transparency to date has been provided by initiatives by NGOs. We
    recognise that this is a transitional

6 Government Response to the Committee’s Fourth Report of Session
2016–17

issue and that there are costs associated with changing labels. Our
preferred outcome would be a national ban on microbeads in cosmetics and
toiletries by the end of next year. Failing that, we recommend that the
Government introduce a clear labelling scheme for microbeads during the
transitional period of a voluntary phase out to provide transparency for
customers. (Paragraph 62)

As we intend to put in place legislation by next year, it is unnecessary
at this stage to introduce any measures to change labelling practices.

Microplastic prevention and solutions 11. We heard that prevention at
source by reducing the number of microplastics flushed into the oceans
is most viable. However, there are also opportunities to capture
microplastics through effective waste and water sewage treatment
processes which currently do not require the monitoring of
microplastics. We recognise the heavy investment needed in this area,
and that there is difficulty in filtering microplastics. Therefore, we
recommend that the Government and Environment Agency work with Water
Companies to understand what feasible options there are to monitor and
ultimately reduce microplastic pollution. (Paragraph 73)

In England, between 2015 and 2020 water companies are investing £2
billion to improve their sewage treatment infrastructure. This will
further increase the proportion of sewage- related debris which is
removed by treatment and reduce the occurrence and severity of untreated
overflows. Through the 21st Century Drainage programme, water companies
are looking at how they can further enhance the performance of their
systems now and in the future with a view to reducing surface water
entering sewers, improving capacity and minimising what escapes.

Although water companies are not the source of the problem, their
infrastructure is an important pathway of contaminants including
microplastics to the wider aquatic environment. Defra has therefore
asked the Environment Agency to take action now to work with water
companies and researchers, to understand in the first instance inputs
from sewage treatment infrastructure. Subsequently, water companies
should evaluate whether there are cost-effective options that could be
deployed as a contribution to an overall solution to the issue. \|

### What is the impact on human health?

### Split docs into paragraphs

``` r
para_1 <- docs[[1]] %>%
  unnest_tokens("para", text, "paragraphs")

para_2 <- docs[[2]] %>%
  unnest_tokens("para", text, "paragraphs")
```

### Find mentions of ‘health’

#### Report:

``` r
health_1 <- para_1 %>%
  filter(str_detect(para, "health"))

health_1 %>%
  knitr::kable(cwidth = 8)
```

| doc_id  | para                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|:--------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 179.pdf | 2 microplastic pollution 7 sources of microplastic pollution 7 microplastic environmental and health impact 9 marine environment pollution 9 impact on human health 11 economic consequences of microplastic pollution 13 international cooperation and future trends 14                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| 179.pdf | microbeads are part of the wider issue of microplastic pollution. the small size of microplastics means that they can be ingested by marine life and have the potential to transfer chemicals to and from the marine environment. there is evidence of ecological damage resulting from this. if someone eats six oysters, it is likely they will have eaten 50 particles of microplastics. this is still a relatively new research area and subject to uncertainties. relatively little research has been done so far either on potential impacts to human health or the marine economy. we recommend that the government draw up a research strategy to assessing and mitigating microplastic pollution for the next round of research funding. human health impacts should be a priority subject for research, along with examining ways to reduce microplastic pollution from consumer goods, such as synthetic fibres and tyres, and industrial processes, such as sandblasting. |
| 179.pdf | 4\. microplastics and their environmental impact are a relative recent subject of study. there are many areas where further research will be required. the aim of our inquiry was to investigate the scale of the problem of microplastics and establish what is known. we looked specifically at the issues of microbeads and the impact of the government’s proposed legislative ban. this also included an examination of what is known about the health consequences microplastics and the extent of the damage to our marine eco- systems.                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| 179.pdf | 5\. a research briefing note by the parliamentary office of science and technology (post) summarises microplastic sources and spread, the evidence that they present a risk and possible strategies to reduce plastic pollution.7 a briefing paper produced by the house of commons library also provides key information on the use of microplastics and microbeads, and their possible impacts on the environment and human health.8                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| 179.pdf | microplastic environmental and health impact                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| 179.pdf | 14\. the small size of microplastics means that they can be ingested by marine life. it is difficult to make predictions about the risks of ingesting microplastics due to the variety of composition, shape and size.34 toxicity could be caused by the plastic polymer itself, the additives it contains, or by other chemicals that associate with microplastics when they are in the ocean.35 un gesamp list the potential effects of microplastics on marine organisms as follows: physical effects such as obstruction; chemical effects due to transportation of toxic chemicals; impaired health; impacts on population and ecosystems; and dispersal of damaging pathogens.36                                                                                                                                                                                                                                                                                                |
| 179.pdf | 18\. there are other environmental concerns which are not related to ingestion of microplastics. for example, microplastics can provide a surface for marine insects to lay their eggs.48 this could lead to an increase in certain species and a potential disruption in ecosystems.49 according to brunel university, microplastics can also host microbial communities and can transport pathogens such as the vibrio strain of bacteria, which could have an impact on wildlife health.50 the community of microbes associated with plastic fragments is different to that normally found in seawater, which could have ecological consequences.51 professor tamara galloway argues:                                                                                                                                                                                                                                                                                              |
| 179.pdf | impact on human health                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| 179.pdf | given the novelty of this research area, there is a lack of information concerning the post-ingestion particle and chemical toxicity of micro and nanoplastics in humans. if micro and nanoplastics are capable of bioaccumulating, they present a long-term source of chemicals to tissues and fluids. this is of concern as some additives \[…\] have human health effects.62                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| 179.pdf | 25\. several ngos told us a precautionary approach should be applied to reduce the risks to human health arising from microplastics.69 the eia state:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| 179.pdf | there is a clear risk that marine microplastics in seafood could pose a threat to human health, however the complexity of estimating microplastic toxicity means that quantification of the risks is not yet possible. \[…\] future studies should focus on assessing the fate and toxicity of microplastics in humans and assessing dietary exposure across a range of foods.”70                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| 179.pdf | 26\. there is little evidence on potential human health impacts of microplastic pollution. what evidence there is suggests that dietary exposure is likely to be low. further research in this area is underway and is clearly required. the government should set out a timescale within which it will publish an assessment of the potential health impacts and any measures it intends as a response.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| 179.pdf | these costs include the cost of clean-ups, loss of fisheries and wildlife, reductions in tourism, damage to vessels and the rescue costs and human health risks associated with damaged vessels.74 in the uk, world animal protection uk stated:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| 179.pdf | 29\. the committee heard that studies estimating the economic costs of microplastic pollution vary widely. as with the health impacts, the government should set out a timescale in which it intends to produce a more accurate assessment. it should also ensure that microplastics are treated as an economic issue - within the scope of its food and farming strategy - as well as an environmental one.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| 179.pdf | 56\. businesses in the cosmetics industry have told us that they are identifying natural alternatives for their products which can meet environmental and health standards.160 however, the reformulation of alternative ingredients can take time. for example, johnson & johnson, said, “\[we\] have been conducting environmental safety assessments of alternatives \[to\] ensure that the alternatives we choose are safe and environmentally sound \[…\].”161 similarly, l’oreal noted that alternatives “requires the analysis & identification \[…\] that can meet many criteria (including human & environmental safety, efficacy, sustainable sourcing of the raw material and overall costs).”162 dr laurent gilbert, l’oreal, said:                                                                                                                                                                                                                                       |
| 179.pdf | 3\. there is little evidence on potential human health impacts of microplastic pollution. what evidence there is suggests that dietary exposure is likely to be low. further research in this area is underway and is clearly required. the government should set out a timescale within which it will publish an assessment of the potential health impacts and any measures it intends as a response. (paragraph 26)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| 179.pdf | 4\. the committee heard that studies estimating the economic costs of microplastic pollution vary widely. as with the health impacts, the government should set out a timescale in which it intends to produce a more accurate assessment. it should also ensure that microplastics are treated as an economic issue – within the scope of its food and farming strategy - as well as an environmental one. (paragraph 29)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| 179.pdf | professor tamara galloway, professor of ecotoxicology, university of exeter, dr erik van sebille, faculty of natural sciences, the grantham institute for climate change, imperial college, and professor frank kelly, professor of environmental health, king’s college london q1–64                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| 179.pdf | first report soil health hc 180 second report flooding: cooperation across government hc 183                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |

#### Response:

``` r
health_2 <- para_2 %>%
  filter(str_detect(para, "health"))

health_2 %>%
  knitr::kable(cwidth = 8)
```

| doc_id  | para                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|:--------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 802.pdf | appendix: government response introduction the government welcomes the environmental audit committee’s (eac) report on ‘the environmental impact of microplastics’. the uk’s vision, set out in the marine policy statement, is for clean, healthy, safe, productive and biologically diverse seas and oceans. tackling marine litter, in all its guises, is a key aspect of achieving this vision and meeting our promise to be the first generation ever to leave the environment in a better state than it inherited. |
| 802.pdf | 2\. there is little evidence on potential human health impacts of microplastic pollution. what evidence there is suggests that dietary exposure is likely to be low. further research in this area is underway and is clearly required. the government should set out a timescale within which it will publish an assessment of the potential health impacts and any measures it intends as a response. (paragraph 26)                                                                                                   |
| 802.pdf | as the eac has stated, there is little evidence on the impact to human health of microplastic pollution. although some marine animals may swallow microplastics, in the case of fish the digestive tracts are usually removed before human consumption. over the next year the chief medical officer of the department of health will be reviewing the effects on health of pollution of several kinds including microplastics.                                                                                          |
| 802.pdf | 3\. the committee heard that studies estimating the economic costs of microplastic pollution vary widely. as with the health impacts, the government should set out a timescale in which it intends to produce a more accurate assessment. it should also ensure that microplastics are treated as an economic issue—within the scope of its food and farming strategy—as well as an environmental one. (paragraph 29)                                                                                                   |
