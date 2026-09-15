.class public abstract Ls3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    const/16 v3, 0x40

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Ls3/f;->a:[I

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    const/16 v1, 0x100

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x7

    .line 23
    const-string v2, "echo"

    .line 24
    .line 25
    const/16 v3, 0x15

    .line 26
    .line 27
    const-string v4, "ftp"

    .line 28
    .line 29
    invoke-static {v1, v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 v1, 0x16

    .line 33
    .line 34
    const-string v2, "ssh"

    .line 35
    .line 36
    const/16 v3, 0x17

    .line 37
    .line 38
    const-string v4, "telnet"

    .line 39
    .line 40
    invoke-static {v1, v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x19

    .line 44
    .line 45
    const-string v2, "smtp"

    .line 46
    .line 47
    const/16 v3, 0x35

    .line 48
    .line 49
    const-string v4, "domain"

    .line 50
    .line 51
    invoke-static {v1, v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x43

    .line 55
    .line 56
    const-string v2, "dhcp"

    .line 57
    .line 58
    const/16 v3, 0x45

    .line 59
    .line 60
    const-string v4, "tftp"

    .line 61
    .line 62
    invoke-static {v1, v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/16 v1, 0x50

    .line 66
    .line 67
    const-string v2, "http"

    .line 68
    .line 69
    const/16 v3, 0x51

    .line 70
    .line 71
    const-string v4, "http-alt"

    .line 72
    .line 73
    invoke-static {v1, v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x58

    .line 77
    .line 78
    const-string v2, "kerberos"

    .line 79
    .line 80
    const/16 v3, 0x6e

    .line 81
    .line 82
    const-string v5, "pop3"

    .line 83
    .line 84
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/16 v1, 0x6f

    .line 88
    .line 89
    const-string v2, "rpcbind"

    .line 90
    .line 91
    const/16 v3, 0x7b

    .line 92
    .line 93
    const-string v5, "ntp"

    .line 94
    .line 95
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/16 v1, 0x87

    .line 99
    .line 100
    const-string v2, "msrpc"

    .line 101
    .line 102
    const/16 v3, 0x89

    .line 103
    .line 104
    const-string v5, "netbios-ns"

    .line 105
    .line 106
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/16 v1, 0x8a

    .line 110
    .line 111
    const-string v2, "netbios-dgm"

    .line 112
    .line 113
    const/16 v3, 0x8b

    .line 114
    .line 115
    const-string v5, "netbios-ssn"

    .line 116
    .line 117
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/16 v1, 0x8f

    .line 121
    .line 122
    const-string v2, "imap"

    .line 123
    .line 124
    const/16 v3, 0xa1

    .line 125
    .line 126
    const-string v5, "snmp"

    .line 127
    .line 128
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/16 v1, 0x185

    .line 132
    .line 133
    const-string v2, "ldap"

    .line 134
    .line 135
    const/16 v3, 0x1ab

    .line 136
    .line 137
    const-string v5, "svrloc"

    .line 138
    .line 139
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/16 v1, 0x1bb

    .line 143
    .line 144
    const-string v2, "https"

    .line 145
    .line 146
    const/16 v3, 0x1bd

    .line 147
    .line 148
    const-string v5, "microsoft-ds"

    .line 149
    .line 150
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/16 v1, 0x1d1

    .line 154
    .line 155
    const-string v2, "smtps"

    .line 156
    .line 157
    const/16 v3, 0x1f4

    .line 158
    .line 159
    const-string v5, "isakmp"

    .line 160
    .line 161
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const/16 v1, 0x203

    .line 165
    .line 166
    const-string v2, "printer"

    .line 167
    .line 168
    const/16 v3, 0x224

    .line 169
    .line 170
    const-string v5, "afp"

    .line 171
    .line 172
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const/16 v1, 0x22a

    .line 176
    .line 177
    const-string v2, "rtsp"

    .line 178
    .line 179
    const/16 v3, 0x24b

    .line 180
    .line 181
    const-string v5, "submission"

    .line 182
    .line 183
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const/16 v1, 0x277

    .line 187
    .line 188
    const-string v2, "ipp"

    .line 189
    .line 190
    const/16 v3, 0x27c

    .line 191
    .line 192
    const-string v5, "ldaps"

    .line 193
    .line 194
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/16 v1, 0x369

    .line 198
    .line 199
    const-string v2, "rsync"

    .line 200
    .line 201
    const/16 v3, 0x386

    .line 202
    .line 203
    const-string v5, "vmware"

    .line 204
    .line 205
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/16 v1, 0x3e1

    .line 209
    .line 210
    const-string v2, "imaps"

    .line 211
    .line 212
    const/16 v3, 0x3e3

    .line 213
    .line 214
    const-string v5, "pop3s"

    .line 215
    .line 216
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const/16 v1, 0x438

    .line 220
    .line 221
    const-string v2, "socks"

    .line 222
    .line 223
    const/16 v3, 0x599

    .line 224
    .line 225
    const-string v5, "ms-sql"

    .line 226
    .line 227
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const/16 v1, 0x6bb

    .line 231
    .line 232
    const-string v2, "pptp"

    .line 233
    .line 234
    const/16 v3, 0x75b

    .line 235
    .line 236
    const-string v5, "mqtt"

    .line 237
    .line 238
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const/16 v1, 0x76c

    .line 242
    .line 243
    const-string v2, "upnp"

    .line 244
    .line 245
    const/16 v3, 0x78f

    .line 246
    .line 247
    const-string v5, "rtmp"

    .line 248
    .line 249
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const/16 v1, 0x801

    .line 253
    .line 254
    const-string v2, "nfs"

    .line 255
    .line 256
    const/16 v3, 0x822

    .line 257
    .line 258
    const-string v5, "cpanel"

    .line 259
    .line 260
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const/16 v1, 0x885

    .line 264
    .line 265
    const-string v2, "zookeeper"

    .line 266
    .line 267
    const/16 v3, 0x947

    .line 268
    .line 269
    const-string v5, "docker"

    .line 270
    .line 271
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const/16 v1, 0xbb8

    .line 275
    .line 276
    const-string v2, "http-dev"

    .line 277
    .line 278
    const/16 v3, 0xcea

    .line 279
    .line 280
    const-string v5, "mysql"

    .line 281
    .line 282
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const/16 v1, 0xd3d

    .line 286
    .line 287
    const-string v2, "ms-term-serv"

    .line 288
    .line 289
    const/16 v3, 0xd96

    .line 290
    .line 291
    const-string v5, "stun"

    .line 292
    .line 293
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    const/16 v1, 0xe69

    .line 297
    .line 298
    const-string v2, "daap"

    .line 299
    .line 300
    const/16 v3, 0x115c

    .line 301
    .line 302
    const-string v5, "metasploit"

    .line 303
    .line 304
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const/16 v1, 0x1388

    .line 308
    .line 309
    const-string v2, "upnp-http"

    .line 310
    .line 311
    const/16 v3, 0x13c4

    .line 312
    .line 313
    const-string v5, "sip"

    .line 314
    .line 315
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const/16 v1, 0x1466

    .line 319
    .line 320
    const-string v2, "xmpp"

    .line 321
    .line 322
    const/16 v3, 0x14e9

    .line 323
    .line 324
    const-string v5, "mdns"

    .line 325
    .line 326
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const/16 v1, 0x14ed

    .line 330
    .line 331
    const-string v2, "wsdapi"

    .line 332
    .line 333
    const/16 v3, 0x1538

    .line 334
    .line 335
    const-string v5, "postgresql"

    .line 336
    .line 337
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    const/16 v1, 0x15b3

    .line 341
    .line 342
    const-string v2, "adb"

    .line 343
    .line 344
    const/16 v3, 0x15e1

    .line 345
    .line 346
    const-string v5, "kibana"

    .line 347
    .line 348
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 349
    .line 350
    .line 351
    const/16 v1, 0x1628

    .line 352
    .line 353
    const-string v2, "amqp"

    .line 354
    .line 355
    const/16 v3, 0x16a8

    .line 356
    .line 357
    const-string v5, "vnc-http"

    .line 358
    .line 359
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 360
    .line 361
    .line 362
    const/16 v1, 0x170c

    .line 363
    .line 364
    const-string v2, "vnc"

    .line 365
    .line 366
    const/16 v3, 0x1760

    .line 367
    .line 368
    const-string v5, "couchdb"

    .line 369
    .line 370
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const/16 v1, 0x18eb

    .line 374
    .line 375
    const-string v2, "redis"

    .line 376
    .line 377
    const/16 v3, 0x1d7b

    .line 378
    .line 379
    const-string v5, "tr069"

    .line 380
    .line 381
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const/16 v1, 0x1f40

    .line 385
    .line 386
    const/16 v2, 0x1f48

    .line 387
    .line 388
    const-string v3, "cast"

    .line 389
    .line 390
    invoke-static {v1, v0, v4, v2, v3}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 391
    .line 392
    .line 393
    const/16 v1, 0x1f49

    .line 394
    .line 395
    const-string v2, "cast-tls"

    .line 396
    .line 397
    const/16 v3, 0x1f90

    .line 398
    .line 399
    const-string v5, "http-proxy"

    .line 400
    .line 401
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const/16 v1, 0x1f91

    .line 405
    .line 406
    const/16 v2, 0x20fb

    .line 407
    .line 408
    const-string v3, "https-alt"

    .line 409
    .line 410
    invoke-static {v1, v0, v4, v2, v3}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 411
    .line 412
    .line 413
    const/16 v1, 0x216a

    .line 414
    .line 415
    const-string v2, "rtsp-alt"

    .line 416
    .line 417
    const/16 v3, 0x22b3

    .line 418
    .line 419
    const-string v5, "mqtts"

    .line 420
    .line 421
    invoke-static {v1, v0, v2, v3, v5}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 422
    .line 423
    .line 424
    const/16 v1, 0x22b8

    .line 425
    .line 426
    const/16 v2, 0x2328

    .line 427
    .line 428
    invoke-static {v1, v0, v4, v2, v4}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    .line 430
    .line 431
    const/16 v1, 0x2382

    .line 432
    .line 433
    const/16 v2, 0x238c

    .line 434
    .line 435
    const-string v3, "jetdirect"

    .line 436
    .line 437
    invoke-static {v1, v0, v4, v2, v3}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 438
    .line 439
    .line 440
    const/16 v1, 0x23f0

    .line 441
    .line 442
    const-string v2, "elasticsearch"

    .line 443
    .line 444
    const/16 v3, 0x2bcb

    .line 445
    .line 446
    const-string v4, "memcached"

    .line 447
    .line 448
    invoke-static {v1, v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 449
    .line 450
    .line 451
    const/16 v1, 0x6989

    .line 452
    .line 453
    const-string v2, "mongodb"

    .line 454
    .line 455
    const/16 v3, 0x7e90

    .line 456
    .line 457
    const-string v4, "plex"

    .line 458
    .line 459
    invoke-static {v1, v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 460
    .line 461
    .line 462
    const v1, 0x9391

    .line 463
    .line 464
    .line 465
    const-string v2, "dahua-dvr"

    .line 466
    .line 467
    const v3, 0xc000

    .line 468
    .line 469
    .line 470
    const-string v4, "upnp-dyn"

    .line 471
    .line 472
    invoke-static {v1, v0, v2, v3, v4}, Lorg/bouncycastle/math/ec/a;->l(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 473
    .line 474
    .line 475
    const v1, 0xf27e

    .line 476
    .line 477
    .line 478
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    const-string v2, "iphone-sync"

    .line 483
    .line 484
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    sput-object v0, Ls3/f;->b:Ljava/util/Map;

    .line 492
    .line 493
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static b(Ljava/lang/Process;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Ls3/f;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ls3/f;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    return-void
.end method

.method public static c([Ljava/lang/String;)I
    .locals 12

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 12
    .line 13
    new-instance v3, Ljava/io/InputStreamReader;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 25
    .line 26
    .line 27
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    const-wide/16 v5, 0x7d0

    .line 32
    .line 33
    add-long/2addr v3, v5

    .line 34
    const/4 v1, 0x0

    .line 35
    move v5, v1

    .line 36
    :goto_0
    add-int/lit8 v6, v5, 0x1

    .line 37
    .line 38
    const/16 v7, 0x20

    .line 39
    .line 40
    if-ge v5, v7, :cond_a

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz v5, :cond_a

    .line 47
    .line 48
    const-string v7, "ttl="

    .line 49
    .line 50
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-gez v7, :cond_0

    .line 55
    .line 56
    const-string v7, "TTL="

    .line 57
    .line 58
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    :cond_0
    if-gez v7, :cond_2

    .line 63
    .line 64
    :cond_1
    :goto_1
    move v9, v0

    .line 65
    goto :goto_4

    .line 66
    :cond_2
    add-int/lit8 v7, v7, 0x4

    .line 67
    .line 68
    move v8, v1

    .line 69
    move v9, v8

    .line 70
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    if-ge v7, v10, :cond_4

    .line 75
    .line 76
    const/4 v10, 0x5

    .line 77
    if-ge v8, v10, :cond_4

    .line 78
    .line 79
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    const/16 v11, 0x30

    .line 84
    .line 85
    if-lt v10, v11, :cond_4

    .line 86
    .line 87
    const/16 v11, 0x39

    .line 88
    .line 89
    if-le v10, v11, :cond_3

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_3
    mul-int/lit8 v9, v9, 0xa

    .line 93
    .line 94
    add-int/lit8 v10, v10, -0x30

    .line 95
    .line 96
    add-int/2addr v9, v10

    .line 97
    add-int/lit8 v8, v8, 0x1

    .line 98
    .line 99
    add-int/lit8 v7, v7, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    :goto_3
    if-nez v8, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    if-lez v9, :cond_1

    .line 106
    .line 107
    const/16 v5, 0xff

    .line 108
    .line 109
    if-le v9, v5, :cond_6

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    :goto_4
    if-lez v9, :cond_7

    .line 113
    .line 114
    invoke-static {v2}, Ls3/f;->a(Ljava/io/Closeable;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0}, Ls3/f;->b(Ljava/lang/Process;)V

    .line 118
    .line 119
    .line 120
    return v9

    .line 121
    :cond_7
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    cmp-long v5, v7, v3

    .line 126
    .line 127
    if-lez v5, :cond_8

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    .line 135
    .line 136
    .line 137
    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    if-eqz v5, :cond_9

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_9
    move v5, v6

    .line 142
    goto :goto_0

    .line 143
    :catchall_0
    move-object v1, v2

    .line 144
    goto :goto_7

    .line 145
    :cond_a
    :goto_5
    invoke-static {v2}, Ls3/f;->a(Ljava/io/Closeable;)V

    .line 146
    .line 147
    .line 148
    :goto_6
    invoke-static {p0}, Ls3/f;->b(Ljava/lang/Process;)V

    .line 149
    .line 150
    .line 151
    goto :goto_8

    .line 152
    :catchall_1
    move-object p0, v1

    .line 153
    :catchall_2
    :goto_7
    invoke-static {v1}, Ls3/f;->a(Ljava/io/Closeable;)V

    .line 154
    .line 155
    .line 156
    goto :goto_6

    .line 157
    :goto_8
    return v0
.end method

.method public static d(Ljava/util/LinkedHashMap;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ip"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "neigh"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "show"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v3, v4

    :goto_0
    add-int/lit8 v6, v3, 0x1

    const/16 v7, 0x1000

    if-ge v3, v7, :cond_8

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v7, "\\s+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    const/4 v8, 0x5

    if-ge v7, v8, :cond_0

    goto :goto_3

    :cond_0
    aget-object v7, v3, v4

    invoke-static {v7}, Lf/u0;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    const-string v7, ""

    move-object v9, v0

    move v8, v5

    :goto_1
    array-length v10, v3

    if-ge v8, v10, :cond_3

    const-string v10, "lladdr"

    aget-object v11, v3, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v10, v8, 0x1

    array-length v11, v3

    if-ge v10, v11, :cond_2

    aget-object v9, v3, v10

    invoke-static {v9}, Ls3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :catchall_0
    move-object v0, v2

    goto :goto_5

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    array-length v8, v3

    sub-int/2addr v8, v5

    aget-object v8, v3, v8

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_4

    move-object v7, v8

    :cond_4
    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    const-string v8, "FAILED"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "INCOMPLETE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    aget-object v3, v3, v4

    invoke-interface {p0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :goto_3
    move v3, v6

    goto :goto_0

    :cond_8
    invoke-static {v2}, Ls3/f;->a(Ljava/io/Closeable;)V

    :goto_4
    invoke-static {v1}, Ls3/f;->b(Ljava/lang/Process;)V

    goto :goto_6

    :catchall_1
    move-object v1, v0

    :catchall_2
    :goto_5
    invoke-static {v0}, Ls3/f;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_6
    return-void
.end method

.method public static e(Ljava/util/LinkedHashMap;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/proc/net/arp"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x1000

    if-ge v3, v6, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x4

    if-ge v4, v6, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v3, v0

    invoke-static {v4}, Lf/u0;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "0x0"

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ls3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    aget-object v3, v3, v0

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v3, v5

    goto :goto_0

    :catchall_0
    move-object v0, v2

    goto :goto_3

    :cond_4
    invoke-static {v2}, Ls3/f;->a(Ljava/io/Closeable;)V

    :goto_2
    invoke-static {v1}, Ls3/f;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-object v1, v0

    :catchall_2
    :goto_3
    invoke-static {v0}, Ls3/f;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :goto_4
    return-void
.end method

.method public static f(Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-static {p0}, Lf/u0;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "/system/bin/ping"

    const-string v1, "-n"

    const-string v2, "-c"

    const-string v3, "1"

    const-string v4, "-W"

    const-string v5, "1"

    move-object v6, p0

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls3/f;->c([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    return v0

    :cond_1
    const-string v1, "ping"

    const-string v2, "-n"

    const-string v3, "-c"

    const-string v4, "1"

    const-string v5, "-W"

    const-string v6, "1"

    move-object v7, p0

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls3/f;->c([Ljava/lang/String;)I

    move-result p0

    return p0
.end method
