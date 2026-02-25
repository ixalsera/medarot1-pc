# Text Section Groups

If you're looking for the offset for a particular pice of text, it can be a little tricky to scrub through where to find
it if you either have no pointer hex or no translation. The table below lists some loosely-defined groups of text.

| Range             |             Group              |             File | Used | Shared |
|:------------------|:------------------------------:|-----------------:|:----:|:------:|
| 0x33e00 - 0x33e3e |                                | TextSection0.csv |      |        |
| 0x37e00 - 0x37e08 |                                | TextSection1.csv |      |        |
| 0x3be00 - 0x3be1e |                                | TextSection2.csv |      |        |
| 0x3fe00 - 0x3fe06 |        Local Tournament        | TextSection3.csv |      |        |
| 0x4f800 - 0x4f81e |                                | TextSection5.csv |      |        |
| 0x5a000 - 0x5a06e |                                | TextSection4.csv |      |        |
| 0x5a070 - 0x5a07a |           Game Start           | TextSection4.csv |  Y   |   N    |
| 0x5a07c - 0x5a0be |                                | TextSection4.csv |      |        |
| 0x60000 - 0x603fe |             Story              | TextSection6.csv |  Y   |   N    |
| 0x68000 - 0x683cc |                                | TextSection7.csv |      |        |
| 0x74000 - 0x7401c |      Battle Text - Status      | TextSection8.csv |  Y   |   Y    |
| 0x7401e - 0x74052 |           Locations            | TextSection8.csv |      |   Y    |
| 0x74054 - 0x74066 |                                | TextSection8.csv |      |   Y    |
| 0x74068 - 0x740b2 | Battle Text - Status Increases | TextSection8.csv |  Y   |   Y    |
| 0x740b4 - 0x74178 |          Battle Text           | TextSection8.csv |  Y   |   Y    |
| 0x7417a - 0x7417c |                                | TextSection8.csv |      |   Y    |
| 0x7417e - 0x741f4 |  Battle Text - Starting Quips  | TextSection8.csv |  Y   |   P    |
| 0x741f6 - 0x74272 |    Battle Text - Loss Quips    | TextSection8.csv |  Y   |   P    |
| 0x74274 - 0x74390 |          Link Battles          | TextSection8.csv |  Y   |   P    |
| 0x74392 - 0x743be |  Battle Text - Player Openers  | TextSection8.csv |  Y   |   N    |
| 0x743c0 - 0x743c6 |       Backstory Sequence       | TextSection8.csv |  Y   |   N    |
| 0x74000 - 0x743de |                                | TextSection8.csv |      |        |

* `P` status for Shared indicates that only parts of this section are shared with the main games; some entries may be in
  different locations or entirely different.
