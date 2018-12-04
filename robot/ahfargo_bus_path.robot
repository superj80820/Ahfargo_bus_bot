*** Settings ***
Resource    ./../init.robot
Test Timeout    ${TIMEOUT}

*** Test Cases ***
Line bus path resp200
    [Template]    TestLineBusPath200
    # A1
    # A2
    # A3
    1
    3
    5
    6
    7
    8
    9
    # 9區
    11
    12
    14
    14延
    14副
    15
    17
    # 19
    18
    20
    # 20區
    21
    # 21延1
    # 21延2
    23
    25
    26
    27
    28
    29
    # 29A
    # 29B
    30
    32
    33
    35
    37
    39
    40
    41
    45
    # 45區
    45延
    # 45延1
    48
    49
    50
    51
    52
    53
    53區
    54
    55
    56
    58
    58副
    58區1
    58區2
    59
    60
    61
    63
    65
    # 65延
    66
    67
    67繞
    68
    68延
    68延(繞國安國小)
    68繞
    69
    69繞
    70
    # 70A
    # 70B
    71
    72
    73
    # 74
    # 74繞
    75
    75區1
    77
    79
    81
    82
    85
    89
    90
    # 90延
    91
    91延
    92
    # 92繞
    93
    95
    95副
    97
    # 98繞
    98
    99
    99延
    101
    102
    105
    # 105區1
    # 105區2
    107
    108
    # 108區
    111
    123
    127
    128
    # 128區
    131
    132
    133
    142
    # 142A
    # 142B
    151
    # 151A
    # 151區
    152
    # 152區
    153
    153區
    153副
    154
    155
    155副
    156
    157
    158
    159
    160
    161
    162
    163
    # 163A
    # 163B
    164
    165
    # 166
    # 167
    170
    171
    172
    178
    179
    180
    181
    181區1
    # 181區2
    182
    183
    185
    186
    # 199
    # 199延
    200
    # 200延
    # 201(原100)
    202
    203
    206
    # 206延
    207
    208
    209
    210
    211
    211區
    212
    213
    # 213繞
    214
    215
    216
    218
    219
    # 219延
    220
    # 220繞
    223
    226
    # 226繞
    227
    229
    228
    232
    235
    237
    238
    239
    # 246
    250
    251
    252
    253
    258
    260
    261
    263
    264
    265
    266
    # 266繞
    267
    269
    270
    271
    272
    272繞
    273
    275
    275區
    276
    277
    278
    279
    280
    281
    281副
    282
    283
    # 284
    285
    # 285副
    286
    287
    288
    289
    290
    290繞
    # 291
    300
    301
    302
    303
    304
    305
    # 305E
    # 305W
    # 305區
    306
    # 306E
    # 306W
    306區1
    # 306區2
    307
    308
    # 309
    # 310
    323
    # 323區
    324
    325
    326
    351
    352
    # 352延
    353
    # 354
    # 355
    356
    357
    358
    359
    500
    616
    # 617
    # 655
    # 657
    658
    658延
    # 659
    # 661
    # 668
    677
    # 677區
    # 688
    # 699
    700
    # 800
    # 811
    # 811區
    # 821
    # 850
    900
    901(原100)
    # 901副(原100副)
    # 956
    # 989
    # 989延

Line bus path resp 404
    [Template]    TestLineBusPath404
    A1
    A2
    A3
    9區
    19
    21延1
    21延2
    29A
    29B
    45區
    45延1
    65延
    70A
    70B
    74
    74繞
    90延
    92繞
    98繞
    108區
    142A
    142B
    151A
    151區
    152區
    163A
    163B
    166
    167
    181區2
    199
    199延
    200延
    201(原100)
    206延
    213繞
    219延
    220繞
    226繞
    246
    266繞
    284
    285副
    291
    305E
    205W
    306E
    306W
    309
    310
    352區
    354
    355
    617
    655
    657
    659
    661
    668
    688
    699
    800
    811
    811區
    821
    850
    901副(原100副)
    956
    989
    989延

Line bus path resp 500
    [Template]    TestLineBusPath500
    20區
    105區1
    105區2
    128區
    305區
    306區2
    323區
    677區

*** Keywords ***
TestLineBusPath200
    [Arguments]    ${bus_num}
    ${resp}    Bus Path    ${bus_num}
    Verify Status Code As Expected    ${resp}    200

TestLineBusPath404
    [Arguments]    ${bus_num}
    ${resp}    Bus Path    ${bus_num}
    Verify Status Code As Expected    ${resp}    404

TestLineBusPath500
    [Arguments]    ${bus_num}
    ${resp}    Bus Path    ${bus_num}
    Verify Status Code As Expected    ${resp}    500