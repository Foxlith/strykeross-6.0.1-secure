.class public Lcom/zalexdev/stryker/install/InstallService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic i:I


# instance fields
.field public volatile a:J

.field public b:Ll4/l;

.field public c:Landroid/app/NotificationManager;

.field public d:Landroid/os/PowerManager$WakeLock;

.field public e:Ljava/util/concurrent/ExecutorService;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;

.field public volatile g:Ljava/lang/Process;

.field public volatile h:Lu2/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zalexdev/stryker/install/InstallService;->a:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :sswitch_0
    const-string v0, "metasploit"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x3

    .line 20
    goto :goto_1

    .line 21
    :sswitch_1
    const-string v0, "hydra"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    move p0, v2

    .line 30
    goto :goto_1

    .line 31
    :sswitch_2
    const-string v0, "cameradar"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    move p0, v1

    .line 40
    goto :goto_1

    .line 41
    :sswitch_3
    const-string v0, "nuclei"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    const/4 p0, -0x1

    .line 52
    :goto_1
    const-string v0, "echo \u00d7Unpacking binary"

    .line 53
    .line 54
    const-string v3, "mkdir -p /tmp /usr/bin"

    .line 55
    .line 56
    const-string v4, "echo \u00d7Done"

    .line 57
    .line 58
    const-string v5, "apt-get -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold -o APT::Sandbox::User=root -o Acquire::Retries=3 update"

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    const-string v6, "echo \u00d7Refreshing package index"

    .line 63
    .line 64
    if-eq p0, v2, :cond_2

    .line 65
    .line 66
    if-eq p0, v1, :cond_1

    .line 67
    .line 68
    new-instance p0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-static {}, Li5/a;->J()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "echo \u00d7Updating packages"

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    const-string v0, "echo \u00d7Installing additional pkgs"

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    const-string v0, "curl ca-certificates gnupg git ruby ruby-dev bundler build-essential pkg-config libpq-dev libpcap-dev libsqlite3-dev libssl-dev zlib1g-dev"

    .line 91
    .line 92
    invoke-static {v0}, Li5/a;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    const-string v0, "echo \u00d7Downloading metasploit"

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v1, "echo \"\u00d7Kernel $(uname -r)\""

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    const-string v1, "SQUASH_OK=0; grep -qw squashfs /proc/filesystems && SQUASH_OK=1"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    const-string v1, "[ \"$SQUASH_OK\" = 1 ] || { modprobe squashfs >/dev/null 2>&1; grep -qw squashfs /proc/filesystems && SQUASH_OK=1 && echo \'\u00d7squashfs loaded as a module\'; }"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    const-string v1, "[ \"$SQUASH_OK\" = 1 ] || echo \'\u00d7squashfs is not in this kernel (needs CONFIG_SQUASHFS + CONFIG_SQUASHFS_XZ)\'"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    const-string v1, "modprobe loop >/dev/null 2>&1 || true"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    const-string v1, "[ -e /dev/loop-control ] || mknod /dev/loop-control c 10 237 >/dev/null 2>&1 || true"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    const-string v1, "for i in 0 1 2 3 4 5 6 7; do [ -e \"/dev/loop$i\" ] || mknod \"/dev/loop$i\" b 7 \"$i\" >/dev/null 2>&1; done; true"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    const-string v1, "LOOP_OK=0; if losetup -f >/dev/null 2>&1; then LOOP_OK=1; echo \"\u00d7loop devices OK ($(losetup -f))\"; elif [ -e /dev/loop-control ]; then echo \'\u00d7/dev/loop-control exists but losetup failed\'; else echo \'\u00d7no loop support in this kernel (needs CONFIG_BLK_DEV_LOOP)\'; fi"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    const-string v1, "SYSTEMD_OK=0; [ -d /run/systemd/system ] && SYSTEMD_OK=1"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    const-string v1, "[ \"$SYSTEMD_OK\" = 1 ] || echo \'\u00d7systemd is not running here \u2014 snapd needs it, skipping snap\'"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 160
    .line 161
    .line 162
    const-string v0, "SNAPOK=0; [ \"$LOOP_OK\" = 1 ] && [ \"$SQUASH_OK\" = 1 ] && [ \"$SYSTEMD_OK\" = 1 ] && SNAPOK=1; echo \"\u00d7snap usable here: $SNAPOK (loop=$LOOP_OK squashfs=$SQUASH_OK systemd=$SYSTEMD_OK)\""

    .line 163
    .line 164
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v1, "if [ \"$SNAPOK\" = 1 ]; then "

    .line 170
    .line 171
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v1, "snapd squashfs-tools"

    .line 175
    .line 176
    invoke-static {v1}, Li5/a;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, " >/dev/null 2>&1; systemctl enable --now snapd.socket >/dev/null 2>&1 || service snapd start >/dev/null 2>&1 || (nohup /usr/lib/snapd/snapd >/tmp/snapd.log 2>&1 &); sleep 8; snap wait system seed.loaded >/dev/null 2>&1; snap install metasploit-framework || echo \'\u00d7snap install failed\'; fi"

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    const-string v0, "command -v msfconsole >/dev/null 2>&1 || echo \'\u00d7Trying the Rapid7 installer\'"

    .line 196
    .line 197
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    const-string v0, "command -v msfconsole >/dev/null 2>&1 || (curl -fsSL https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb -o /tmp/msfinstall && chmod 0755 /tmp/msfinstall && /tmp/msfinstall) || echo \'\u00d7Rapid7 installer unavailable, building from source\'"

    .line 201
    .line 202
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    const-string v0, "command -v msfconsole >/dev/null 2>&1 || (rm -rf /opt/metasploit-framework && git clone --depth 1 https://github.com/rapid7/metasploit-framework /opt/metasploit-framework)"

    .line 206
    .line 207
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    const-string v0, "echo \u00d7Pulling msfpc helper"

    .line 211
    .line 212
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    const-string v0, "rm -rf /opt/msfpc; git clone --depth 1 https://github.com/g0tmi1k/msfpc /opt/msfpc && install -m 0755 /opt/msfpc/msfpc.sh /usr/local/bin/msfpc || true"

    .line 216
    .line 217
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    const-string v0, "echo \u00d7Linking binaries"

    .line 221
    .line 222
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    const-string v0, "for b in msfconsole msfvenom msfdb msfd msfrpc; do if [ -x \"/snap/bin/metasploit-framework.$b\" ]; then ln -sf \"/snap/bin/metasploit-framework.$b\" \"/usr/local/bin/$b\"; elif [ -x \"/snap/bin/$b\" ]; then ln -sf \"/snap/bin/$b\" \"/usr/local/bin/$b\"; elif [ -x \"/opt/metasploit-framework/$b\" ]; then ln -sf \"/opt/metasploit-framework/$b\" \"/usr/local/bin/$b\"; fi; done; true"

    .line 226
    .line 227
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    const-string v0, "echo \u00d7Installing msf pkgs and tools"

    .line 231
    .line 232
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    const-string v0, "if [ -f /opt/metasploit-framework/Gemfile ]; then cd /opt/metasploit-framework && bundle config set --local without \'development test coverage\' >/dev/null 2>&1; bundle install; fi; true"

    .line 236
    .line 237
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    const-string v0, "echo \u00d7Initializing metasploit"

    .line 241
    .line 242
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    const-string v0, "command -v msfconsole >/dev/null 2>&1 && msfconsole -q -x \'version; exit\' 2>&1 | head -5 || true"

    .line 246
    .line 247
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    const-string v0, "echo \u00d7Making sure everything is ready"

    .line 251
    .line 252
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    const-string v0, "command -v msfconsole >/dev/null 2>&1 && msfconsole --version 2>&1 | head -3 || echo \'\u00d7msfconsole is still missing \u2014 see the log above\'"

    .line 256
    .line 257
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    return-object p0

    .line 264
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-static {}, Li5/a;->J()Ljava/util/ArrayList;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    const-string v1, "echo \u00d7Installing dependencies"

    .line 280
    .line 281
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    const-string v1, "curl ca-certificates tar nmap"

    .line 285
    .line 286
    invoke-static {v1}, Li5/a;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    const-string v1, "CARCH=linux_arm64; case \"$(uname -m)\" in aarch64|arm64) CARCH=linux_arm64;; armv7*) CARCH=linux_armv7;; armv6*) CARCH=linux_armv6;; x86_64|amd64) CARCH=linux_amd64;; i?86) CARCH=linux_386;; esac; echo \"\u00d7Target $CARCH\""

    .line 297
    .line 298
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    const-string v1, "echo \u00d7Resolving latest cameradar release"

    .line 302
    .line 303
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    const-string v1, "CDURL=$(curl -fsSL https://api.github.com/repos/Ullaakut/cameradar/releases/latest | tr \',\' \'\\n\' | grep browser_download_url | grep \"$CARCH\" | grep \'\\.tar\\.gz\' | head -1 | cut -d\'\"\' -f4)"

    .line 307
    .line 308
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    const-string v1, "[ -n \"$CDURL\" ] || echo \'\u00d7Could not resolve a release URL\'"

    .line 312
    .line 313
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    const-string v1, "echo \"\u00d7Downloading $CDURL\""

    .line 317
    .line 318
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    const-string v1, "[ -n \"$CDURL\" ] && curl -fL --retry 3 --retry-delay 2 -o /tmp/cameradar.tar.gz \"$CDURL\""

    .line 322
    .line 323
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    const-string v0, "rm -rf /tmp/cameradar-x; mkdir -p /tmp/cameradar-x; tar -xzf /tmp/cameradar.tar.gz -C /tmp/cameradar-x 2>&1 | head -5"

    .line 330
    .line 331
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    const-string v0, "CDBIN=$(find /tmp/cameradar-x -type f -name cameradar 2>/dev/null | head -1)"

    .line 335
    .line 336
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    const-string v0, "[ -n \"$CDBIN\" ] || CDBIN=$(find /tmp/cameradar-x -type f ! -name \'*.md\' ! -name \'*.txt\' ! -name \'*.json\' ! -name \'LICENSE*\' 2>/dev/null | head -1)"

    .line 340
    .line 341
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    const-string v0, "if [ -n \"$CDBIN\" ]; then install -m 0755 \"$CDBIN\" /usr/bin/cameradar; else echo \'\u00d7No binary inside the archive\'; fi"

    .line 345
    .line 346
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    const-string v0, "ln -sf /usr/bin/cameradar /usr/bin/radar"

    .line 350
    .line 351
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    const-string v0, "rm -rf /tmp/cameradar.tar.gz /tmp/cameradar-x"

    .line 355
    .line 356
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    const-string v0, "echo \u00d7Checking dictionaries"

    .line 360
    .line 361
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    const-string v0, "[ -f /CORE/Cameradar/credentials.json ] && [ -f /CORE/Cameradar/routes ] || echo \'\u00d7Cameradar dictionaries are missing from /CORE \u2014 repair the core\'"

    .line 365
    .line 366
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    const-string v0, "echo \u00d7Verify cameradar"

    .line 370
    .line 371
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    const-string v0, "/usr/bin/cameradar --help 2>&1 | head -3 || echo \'\u00d7cameradar is still missing \u2014 see the log above\'"

    .line 375
    .line 376
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    return-object p0

    .line 383
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-static {}, Li5/a;->J()Ljava/util/ArrayList;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    const-string v0, "echo \u00d7Installing hydra"

    .line 399
    .line 400
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    const-string v0, "apt-get -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold -o APT::Sandbox::User=root -o Acquire::Retries=3 install -y hydra"

    .line 404
    .line 405
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    const-string v0, "echo \u00d7Done installing"

    .line 409
    .line 410
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    return-object p0

    .line 414
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-static {}, Li5/a;->J()Ljava/util/ArrayList;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 421
    .line 422
    .line 423
    const-string v1, "echo \u00d7Installing download tools"

    .line 424
    .line 425
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    const-string v1, "curl unzip ca-certificates"

    .line 432
    .line 433
    invoke-static {v1}, Li5/a;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    new-instance v1, Ljava/util/ArrayList;

    .line 441
    .line 442
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    const-string v2, "echo \u00d7Detecting architecture"

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    const-string v2, "NARCH=linux_arm64; echo \"\u00d7Target $NARCH\""

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    const-string v2, "echo \u00d7Resolving latest nuclei release"

    .line 459
    .line 460
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    const-string v2, "NURL=$(curl -fsSL https://api.github.com/repos/projectdiscovery/nuclei/releases/latest | tr \',\' \'\\n\' | grep browser_download_url | grep \"$NARCH\" | grep \'\\.zip\' | head -1 | cut -d\'\"\' -f4)"

    .line 464
    .line 465
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    const-string v2, "[ -n \"$NURL\" ] || echo \'\u00d7Could not resolve a release URL\'"

    .line 469
    .line 470
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    const-string v2, "echo \"\u00d7Downloading $NURL\""

    .line 474
    .line 475
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    const-string v2, "curl -fL --retry 3 --retry-delay 2 -o /tmp/nuclei.zip \"$NURL\""

    .line 479
    .line 480
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    const-string v0, "unzip -o /tmp/nuclei.zip nuclei -d /usr/bin"

    .line 487
    .line 488
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    const-string v0, "chmod 0755 /usr/bin/nuclei"

    .line 492
    .line 493
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    const-string v0, "rm -f /tmp/nuclei.zip"

    .line 497
    .line 498
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    const-string v0, "echo \u00d7Fetching template library"

    .line 502
    .line 503
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    const-string v0, "export HOME=/root; mkdir -p /root/.config/nuclei; if /usr/bin/nuclei -duc -ut >/tmp/nuclei-ut.log 2>&1; then touch /root/.config/nuclei/.stryker-templates-ok; fi; tail -8 /tmp/nuclei-ut.log; rm -f /tmp/nuclei-ut.log"

    .line 507
    .line 508
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    const-string v0, "if [ -f /root/.config/nuclei/.stryker-templates-ok ]; then echo \'\u00d7Template library ready\'; else echo \'\u00d7Template download failed \u2014 the first scan will retry\'; fi"

    .line 512
    .line 513
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    const-string v0, "echo \u00d7Verify nuclei -version"

    .line 517
    .line 518
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    const-string v0, "/usr/bin/nuclei -version 2>&1 | head -3"

    .line 522
    .line 523
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 530
    .line 531
    .line 532
    return-object p0

    .line 533
    :sswitch_data_0
    .sparse-switch
        -0x3dab8aec -> :sswitch_3
        -0x14624db0 -> :sswitch_2
        0x5f212e2 -> :sswitch_1
        0x6a241c10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "metasploit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "hydra"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "cameradar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "nuclei"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const-string p0, "Metasploit"

    return-object p0

    :cond_1
    const-string p0, "Cameradar"

    return-object p0

    :cond_2
    const-string p0, "Hydra"

    return-object p0

    :cond_3
    const-string p0, "Nuclei"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3dab8aec -> :sswitch_3
        -0x14624db0 -> :sswitch_2
        0x5f212e2 -> :sswitch_1
        0x6a241c10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "install-logs"

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 22
    .line 23
    const-string v1, ".log"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/zalexdev/stryker/install/InstallService;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p0

    const/16 v1, 0x258

    if-le p0, v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readLog failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InstallService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static h(Landroid/content/Context;Ll4/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lcom/zalexdev/stryker/install/InstallService;->l(Ll4/l;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "running"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    const-string v1, "activity"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/app/ActivityManager;

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v1, 0x7fffffff

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 46
    .line 47
    const-class v2, Lcom/zalexdev/stryker/install/InstallService;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v0, "install_status_"

    .line 69
    .line 70
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p2, "failed"

    .line 81
    .line 82
    invoke-virtual {p1, p0, p2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object p2

    .line 86
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zalexdev/stryker/install/InstallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.zalexdev.stryker.install.INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tool"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lq1/a;->j(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public static l(Ll4/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "install_status_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    :cond_0
    const-string p0, "idle"

    .line 28
    .line 29
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zalexdev.stryker.install.UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tool"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p1, "line"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "status"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/zalexdev/stryker/MainActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x24000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/high16 v2, 0xc000000

    .line 16
    .line 17
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Lv/z;

    .line 22
    .line 23
    const-string v3, "stryker_install_channel"

    .line 24
    .line 25
    invoke-direct {v2, p0, v3}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, v2, Lv/z;->s:Landroid/app/Notification;

    .line 29
    .line 30
    const v4, 0x7f0800ca

    .line 31
    .line 32
    .line 33
    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 34
    .line 35
    const v3, 0x7f1302dd

    .line 36
    .line 37
    .line 38
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, v2, Lv/z;->e:Ljava/lang/CharSequence;

    .line 51
    .line 52
    invoke-static {p2}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, v2, Lv/z;->f:Ljava/lang/CharSequence;

    .line 57
    .line 58
    const/16 p1, 0x8

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lv/z;->e(I)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x2

    .line 64
    invoke-virtual {v2, p1}, Lv/z;->e(I)V

    .line 65
    .line 66
    .line 67
    const/16 p1, 0x64

    .line 68
    .line 69
    const/4 p2, 0x1

    .line 70
    invoke-virtual {v2, p1, v1, p2}, Lv/z;->f(IIZ)V

    .line 71
    .line 72
    .line 73
    iput-object v0, v2, Lv/z;->g:Landroid/app/PendingIntent;

    .line 74
    .line 75
    const/4 p1, -0x1

    .line 76
    iput p1, v2, Lv/z;->i:I

    .line 77
    .line 78
    invoke-virtual {v2}, Lv/z;->a()Landroid/app/Notification;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const-string v0, "Receiving objects"

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    const-string v0, "Resolving deltas"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    const-string v0, "Counting objects"

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    const-string v0, "Compressing objects"

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    const-string v0, "Updating files"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    const-string v0, "Unpacking objects"

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/install/InstallService;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iget-wide v2, p0, Lcom/zalexdev/stryker/install/InstallService;->a:J

    .line 68
    .line 69
    sub-long v2, v0, v2

    .line 70
    .line 71
    const-wide/16 v4, 0x96

    .line 72
    .line 73
    cmp-long v2, v2, v4

    .line 74
    .line 75
    if-ltz v2, :cond_3

    .line 76
    .line 77
    iput-wide v0, p0, Lcom/zalexdev/stryker/install/InstallService;->a:J

    .line 78
    .line 79
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    .line 80
    .line 81
    invoke-static {v0, p1}, Lcom/zalexdev/stryker/install/InstallService;->l(Ll4/l;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p0, p1, p2, v0}, Lcom/zalexdev/stryker/install/InstallService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_1
    const-string v0, "\u00d7"

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    const-string v1, ""

    .line 97
    .line 98
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/install/InstallService;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_2
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 14

    const-string v0, "install-stderr-"

    const-string v1, "running"

    invoke-virtual {p0, p1, v1}, Lcom/zalexdev/stryker/install/InstallService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/zalexdev/stryker/install/InstallService;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zalexdev/stryker/install/InstallService;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " installation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/zalexdev/stryker/install/InstallService;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zalexdev/stryker/install/InstallService;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1302db

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/zalexdev/stryker/install/InstallService;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {v1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    move-result v1

    const-string v2, "[E] install shell crashed: "

    const-string v3, "InstallService"

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/zalexdev/stryker/install/InstallService;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v4

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    .line 5
    iget-object v1, v1, Ll4/l;->c:Landroid/content/Context;

    .line 6
    invoke-static {v1}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu2/h;->t(Ljava/lang/String;)Lu2/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->h:Lu2/b;

    :goto_1
    iget-object v1, v0, Lu2/b;->c:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v5, "__STRYKER_EXIT__"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/zalexdev/stryker/install/InstallService;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {v0}, Lu2/b;->a()V

    iput-object v4, p0, Lcom/zalexdev/stryker/install/InstallService;->h:Lu2/b;

    goto/16 :goto_7

    :goto_3
    :try_start_2
    const-string v5, "rootless install crashed"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zalexdev/stryker/install/InstallService;->n(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lu2/b;->a()V

    :cond_3
    iput-object v4, p0, Lcom/zalexdev/stryker/install/InstallService;->h:Lu2/b;

    goto/16 :goto_15

    :catchall_2
    move-exception p1

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lu2/b;->a()V

    :cond_4
    iput-object v4, p0, Lcom/zalexdev/stryker/install/InstallService;->h:Lu2/b;

    throw p1

    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    .line 8
    invoke-virtual {v1}, Ll4/l;->w()Ljava/lang/Process;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    :try_start_4
    iput-object v1, p0, Lcom/zalexdev/stryker/install/InstallService;->g:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Landroidx/emoji2/text/m;

    const/16 v9, 0x18

    invoke-direct {v8, p0, v1, p1, v9}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    const-string v0, "/data/data/com.zalexdev.stryker/files/chroot_exec \'bash\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p1}, Lcom/zalexdev/stryker/install/InstallService;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    :catchall_3
    move-exception p1

    goto/16 :goto_17

    :catch_2
    move-exception v0

    goto/16 :goto_14

    :cond_6
    const-string v0, "exit\nexit\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/zalexdev/stryker/install/InstallService;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v5

    goto/16 :goto_12

    :cond_7
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-wide/16 v5, 0x7d0

    :try_start_7
    invoke-virtual {v7, v5, v6}, Ljava/lang/Thread;->join(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catch_3
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    iput-object v4, p0, Lcom/zalexdev/stryker/install/InstallService;->g:Ljava/lang/Process;

    .line 9
    :goto_7
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    const-string v1, "nuclei"

    const-string v2, "cameradar"

    const-string v4, "hydra"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "metasploit"

    const/4 v9, 0x3

    const/4 v10, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    :try_start_b
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v9

    goto :goto_9

    :catchall_6
    move-exception v0

    goto/16 :goto_11

    :sswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v5

    goto :goto_9

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v7

    goto :goto_9

    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v6

    goto :goto_9

    :cond_8
    :goto_8
    move v0, v10

    :goto_9
    if-eqz v0, :cond_b

    if-eq v0, v5, :cond_a

    if-eq v0, v7, :cond_9

    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    const-string v11, "msfconsole"

    invoke-virtual {v0, v11}, Ll4/l;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    new-array v11, v5, [Ljava/lang/String;

    const-string v12, "/opt/metasploit-framework/msfconsole"

    aput-object v12, v11, v6

    invoke-virtual {v0, v11}, Ll4/l;->M([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    invoke-virtual {v0, v2}, Ll4/l;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    new-array v11, v7, [Ljava/lang/String;

    const-string v12, "/usr/bin/cameradar"

    aput-object v12, v11, v6

    const-string v12, "/usr/local/bin/cameradar"

    aput-object v12, v11, v5

    invoke-virtual {v0, v11}, Ll4/l;->M([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_b

    :cond_a
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    invoke-virtual {v0, v4}, Ll4/l;->O(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    invoke-virtual {v0, v1}, Ll4/l;->O(Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :goto_a
    if-eqz v0, :cond_13

    .line 10
    :cond_c
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_c
    move v6, v10

    goto :goto_d

    :sswitch_4
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_c

    :cond_d
    move v6, v9

    goto :goto_d

    :sswitch_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_c

    :cond_e
    move v6, v7

    goto :goto_d

    :sswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_c

    :cond_f
    move v6, v5

    goto :goto_d

    :sswitch_7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_c

    :cond_10
    :goto_d
    packed-switch v6, :pswitch_data_0

    goto :goto_f

    :pswitch_0
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    const-string v1, "msf"

    :goto_e
    invoke-virtual {v0, v1, v5}, Ll4/l;->b0(Ljava/lang/String;Z)V

    goto :goto_f

    :pswitch_1
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    invoke-virtual {v0, v4, v5}, Ll4/l;->b0(Ljava/lang/String;Z)V

    goto :goto_f

    :pswitch_2
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    invoke-virtual {v0, v2, v5}, Ll4/l;->b0(Ljava/lang/String;Z)V

    goto :goto_f

    :pswitch_3
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    goto :goto_e

    :goto_f
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checking if "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Ll4/l;->f:Lu3/g;

    invoke-virtual {v2, v5, v1}, Lu3/g;->e(ILjava/lang/String;)V

    const-string v1, "installed_modules"

    invoke-virtual {v0, v1}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Installing "

    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Ll4/l;->f:Lu3/g;

    invoke-virtual {v3, v5, v2}, Lu3/g;->e(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2, v1}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 14
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OK: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zalexdev/stryker/install/InstallService;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " installation complete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zalexdev/stryker/install/InstallService;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "done"

    invoke-virtual {p0, p1, v0}, Lcom/zalexdev/stryker/install/InstallService;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zalexdev/stryker/install/InstallService;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1302d9

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {p0, p1, v0}, Lcom/zalexdev/stryker/install/InstallService;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 15
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "verify failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 16
    :goto_12
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_13

    :catchall_7
    move-exception v0

    :try_start_d
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13
    throw v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_8
    move-exception p1

    move-object v1, v4

    goto :goto_17

    :catch_4
    move-exception v0

    move-object v1, v4

    :goto_14
    :try_start_e
    const-string v5, "install shell crashed"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zalexdev/stryker/install/InstallService;->n(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v1, :cond_12

    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    :cond_12
    iput-object v4, p0, Lcom/zalexdev/stryker/install/InstallService;->g:Ljava/lang/Process;

    :cond_13
    :goto_15
    const-string v0, "failed"

    invoke-virtual {p0, p1, v0}, Lcom/zalexdev/stryker/install/InstallService;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zalexdev/stryker/install/InstallService;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " install did not verify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zalexdev/stryker/install/InstallService;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zalexdev/stryker/install/InstallService;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1302da

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :goto_16
    return-void

    :goto_17
    if-eqz v1, :cond_14

    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    :cond_14
    iput-object v4, p0, Lcom/zalexdev/stryker/install/InstallService;->g:Ljava/lang/Process;

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x3dab8aec -> :sswitch_3
        -0x14624db0 -> :sswitch_2
        0x5f212e2 -> :sswitch_1
        0x6a241c10 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3dab8aec -> :sswitch_7
        -0x14624db0 -> :sswitch_6
        0x5f212e2 -> :sswitch_5
        0x6a241c10 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "install_status_"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1, p2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0, p2}, Lcom/zalexdev/stryker/install/InstallService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "tee failed: "

    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1}, Lcom/zalexdev/stryker/install/InstallService;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "\u00d7"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v4, 0x40000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    const-string v2, "InstallService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    invoke-static {v0, p1}, Lcom/zalexdev/stryker/install/InstallService;->l(Ll4/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zalexdev/stryker/install/InstallService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->c:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/zalexdev/stryker/install/InstallService;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/install/InstallService;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    const/16 p2, 0x13ec

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll4/l;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    .line 10
    .line 11
    const-string v0, "notification"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/NotificationManager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->c:Landroid/app/NotificationManager;

    .line 20
    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v1, 0x1a

    .line 24
    .line 25
    if-lt v0, v1, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lc3/a;->o()V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f1302d8

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lf4/b;->z(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lf4/b;->p(Landroid/app/NotificationChannel;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/zalexdev/stryker/install/InstallService;->c:Landroid/app/NotificationManager;

    .line 45
    .line 46
    invoke-static {v1, v0}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    new-instance v0, Lu2/e;

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    invoke-direct {v0, v1}, Lu2/e;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->e:Ljava/util/concurrent/ExecutorService;

    .line 60
    .line 61
    const-string v0, "power"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/os/PowerManager;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    const-string v2, "stryker:install"

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->d:Landroid/os/PowerManager$WakeLock;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->g:Ljava/lang/Process;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->h:Lu2/b;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lu2/b;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    invoke-static {v1, v0}, Lcom/zalexdev/stryker/install/InstallService;->l(Ll4/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "running"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "failed"

    invoke-virtual {p0, v0, v1}, Lcom/zalexdev/stryker/install/InstallService;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p3, p2

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const-string v0, "tool"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v0, p2

    .line 20
    :goto_1
    iget-object v1, p0, Lcom/zalexdev/stryker/install/InstallService;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object v1, v0

    .line 32
    :goto_2
    const v2, 0x7f1302dc

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1}, Lcom/zalexdev/stryker/install/InstallService;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0, v1, v2}, Lcom/zalexdev/stryker/install/InstallService;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v3, 0x1d

    .line 50
    .line 51
    if-lt v2, v3, :cond_3

    .line 52
    .line 53
    invoke-static {p0, v1}, Lcom/google/android/material/textfield/h;->h(Lcom/zalexdev/stryker/install/InstallService;Landroid/app/Notification;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    const/16 v2, 0x13ec

    .line 58
    .line 59
    invoke-virtual {p0, v2, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 60
    .line 61
    .line 62
    :goto_3
    const/4 v1, 0x2

    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/zalexdev/stryker/install/InstallService;->m()V

    .line 66
    .line 67
    .line 68
    return v1

    .line 69
    :cond_4
    const-string p1, "com.zalexdev.stryker.install.CANCEL"

    .line 70
    .line 71
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_8

    .line 76
    .line 77
    iget-object p1, p0, Lcom/zalexdev/stryker/install/InstallService;->g:Ljava/lang/Process;

    .line 78
    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    :catchall_0
    :cond_5
    iget-object p1, p0, Lcom/zalexdev/stryker/install/InstallService;->h:Lu2/b;

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    :try_start_1
    invoke-virtual {p1}, Lu2/b;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    .line 90
    .line 91
    :catchall_1
    :cond_6
    if-eqz v0, :cond_7

    .line 92
    .line 93
    const-string p1, "failed"

    .line 94
    .line 95
    invoke-virtual {p0, v0, p1}, Lcom/zalexdev/stryker/install/InstallService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string p1, "[E] install cancelled"

    .line 99
    .line 100
    invoke-virtual {p0, v0, p1}, Lcom/zalexdev/stryker/install/InstallService;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_7
    iget-object p1, p0, Lcom/zalexdev/stryker/install/InstallService;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/zalexdev/stryker/install/InstallService;->m()V

    .line 109
    .line 110
    .line 111
    return v1

    .line 112
    :cond_8
    const-string p1, "com.zalexdev.stryker.install.INSTALL"

    .line 113
    .line 114
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_d

    .line 119
    .line 120
    const-string p1, "metasploit"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_9

    .line 127
    .line 128
    const-string p1, "nuclei"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_9

    .line 135
    .line 136
    const-string p1, "hydra"

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_9

    .line 143
    .line 144
    const-string p1, "cameradar"

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_d

    .line 151
    .line 152
    :cond_9
    iget-object p1, p0, Lcom/zalexdev/stryker/install/InstallService;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 153
    .line 154
    :cond_a
    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p3

    .line 158
    if-eqz p3, :cond_c

    .line 159
    .line 160
    iget-object p1, p0, Lcom/zalexdev/stryker/install/InstallService;->d:Landroid/os/PowerManager$WakeLock;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_b

    .line 167
    .line 168
    iget-object p1, p0, Lcom/zalexdev/stryker/install/InstallService;->d:Landroid/os/PowerManager$WakeLock;

    .line 169
    .line 170
    const-wide/32 p2, 0x6ddd00

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 174
    .line 175
    .line 176
    :cond_b
    iget-object p1, p0, Lcom/zalexdev/stryker/install/InstallService;->e:Ljava/util/concurrent/ExecutorService;

    .line 177
    .line 178
    new-instance p2, Lw2/h;

    .line 179
    .line 180
    const/16 p3, 0xe

    .line 181
    .line 182
    invoke-direct {p2, p0, v0, p3}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 183
    .line 184
    .line 185
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 186
    .line 187
    .line 188
    return v1

    .line 189
    :cond_c
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    if-eqz p3, :cond_a

    .line 194
    .line 195
    iget-object p1, p0, Lcom/zalexdev/stryker/install/InstallService;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Ljava/lang/String;

    .line 202
    .line 203
    iget-object p3, p0, Lcom/zalexdev/stryker/install/InstallService;->b:Ll4/l;

    .line 204
    .line 205
    iget-object v0, p0, Lcom/zalexdev/stryker/install/InstallService;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {p3, v0}, Lcom/zalexdev/stryker/install/InstallService;->l(Ll4/l;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p3

    .line 217
    invoke-virtual {p0, p1, p2, p3}, Lcom/zalexdev/stryker/install/InstallService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return v1

    .line 221
    :cond_d
    invoke-virtual {p0}, Lcom/zalexdev/stryker/install/InstallService;->m()V

    .line 222
    .line 223
    .line 224
    return v1
.end method
