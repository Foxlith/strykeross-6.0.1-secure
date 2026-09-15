.class public final Ls3/z;
.super Ls3/b;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final f:Ljava/util/Set;

.field public volatile g:Ljava/net/MulticastSocket;

.field public volatile h:Ljava/net/InetAddress;

.field public volatile i:Z

.field public volatile j:Z

.field public volatile k:Z

.field public volatile l:Ljava/lang/Thread;

.field public volatile m:Ljava/lang/Thread;

.field public volatile n:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ly0/p;Lu3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ls3/b;-><init>(Ly0/p;Lu3/g;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Ls3/z;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ls3/z;->f:Ljava/util/Set;

    return-void
.end method

.method public static h(Ls3/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x100

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :cond_0
    const-string v0, "friendlyname"

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Ls3/p;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_9

    .line 35
    .line 36
    iput-object p2, p0, Ls3/p;->b:Ljava/lang/String;

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    const-string v0, "devicetype"

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Ls3/p;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_9

    .line 55
    .line 56
    iput-object p2, p0, Ls3/p;->c:Ljava/lang/String;

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_2
    const-string v0, "manufacturer"

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object p1, p0, Ls3/p;->d:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_9

    .line 75
    .line 76
    iput-object p2, p0, Ls3/p;->d:Ljava/lang/String;

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_3
    const-string v0, "modelname"

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    iget-object p1, p0, Ls3/p;->e:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_9

    .line 95
    .line 96
    iput-object p2, p0, Ls3/p;->e:Ljava/lang/String;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    const-string v0, "modelnumber"

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    iget-object p1, p0, Ls3/p;->f:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_9

    .line 114
    .line 115
    iput-object p2, p0, Ls3/p;->f:Ljava/lang/String;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    const-string v0, "modeldescription"

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    iget-object p1, p0, Ls3/p;->g:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_9

    .line 133
    .line 134
    iput-object p2, p0, Ls3/p;->g:Ljava/lang/String;

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    const-string v0, "serialnumber"

    .line 138
    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_7

    .line 144
    .line 145
    iget-object p1, p0, Ls3/p;->h:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_9

    .line 152
    .line 153
    iput-object p2, p0, Ls3/p;->h:Ljava/lang/String;

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_7
    const-string v0, "udn"

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_8

    .line 163
    .line 164
    iget-object p1, p0, Ls3/p;->i:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_9

    .line 171
    .line 172
    iput-object p2, p0, Ls3/p;->i:Ljava/lang/String;

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_8
    const-string v0, "servicetype"

    .line 176
    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_9

    .line 182
    .line 183
    iget-object p0, p0, Ls3/p;->k:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    const/16 v0, 0x20

    .line 190
    .line 191
    if-ge p1, v0, :cond_9

    .line 192
    .line 193
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-nez p1, :cond_9

    .line 198
    .line 199
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    :cond_9
    :goto_0
    return-void
.end method

.method public static m(Ljava/lang/String;)Ls3/p;
    .locals 6

    .line 1
    new-instance v0, Ls3/p;

    .line 2
    .line 3
    invoke-direct {v0}, Ls3/p;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_1
    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 12
    .line 13
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    :try_start_2
    new-instance v3, Ljava/io/StringReader;

    .line 17
    .line 18
    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 28
    const-string v3, ""

    .line 29
    .line 30
    move-object v4, v3

    .line 31
    :goto_0
    const/4 v5, 0x1

    .line 32
    if-eq p0, v5, :cond_5

    .line 33
    .line 34
    const/16 v5, 0x4e20

    .line 35
    .line 36
    if-ge v2, v5, :cond_5

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    const/4 v5, 0x2

    .line 41
    if-ne p0, v5, :cond_2

    .line 42
    .line 43
    :try_start_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-nez p0, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/16 v4, 0x3a

    .line 51
    .line 52
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ltz v4, :cond_1

    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    :cond_1
    move-object v4, p0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const/4 v5, 0x3

    .line 67
    if-ne p0, v5, :cond_3

    .line 68
    .line 69
    :goto_1
    move-object v4, v3

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    const/4 v5, 0x4

    .line 72
    if-ne p0, v5, :cond_4

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-nez p0, :cond_4

    .line 79
    .line 80
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez v5, :cond_4

    .line 95
    .line 96
    invoke-static {v0, v4, p0}, Ls3/z;->h(Ls3/p;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 100
    .line 101
    .line 102
    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 103
    goto :goto_0

    .line 104
    :catch_1
    :cond_5
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized e()V
    .locals 4

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ls3/b;->c:Z

    iget-object v1, p0, Ls3/z;->g:Ljava/net/MulticastSocket;

    const/4 v2, 0x0

    iput-object v2, p0, Ls3/z;->g:Ljava/net/MulticastSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-boolean v3, p0, Ls3/z;->i:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Ls3/z;->h:Ljava/net/InetAddress;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ls3/z;->h:Ljava/net/InetAddress;

    invoke-virtual {v1, v3}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :cond_1
    :try_start_3
    iput-boolean v0, p0, Ls3/z;->i:Z

    iget-object v0, p0, Ls3/z;->n:Ljava/util/concurrent/ExecutorService;

    iput-object v2, p0, Ls3/z;->n:Ljava/util/concurrent/ExecutorService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    :try_start_4
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :cond_2
    :try_start_5
    iget-object v0, p0, Ls3/z;->l:Ljava/lang/Thread;

    iget-object v1, p0, Ls3/z;->m:Ljava/lang/Thread;

    iput-object v2, p0, Ls3/z;->l:Ljava/lang/Thread;

    iput-object v2, p0, Ls3/z;->m:Ljava/lang/Thread;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_3
    :cond_3
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_4
    :cond_4
    :try_start_8
    invoke-static {v0}, Ls3/b;->a(Ljava/lang/Thread;)V

    invoke-static {v1}, Ls3/b;->a(Ljava/lang/Thread;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ssdp"

    return-object v0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto/16 :goto_3

    :catch_0
    move-object p1, v0

    move-object v2, p1

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v2, "http"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1770

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "User-Agent"

    const-string v2, "Stryker"

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "text/xml, application/xml"

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v0

    :cond_3
    :try_start_4
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v2, :cond_6

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_4
    :try_start_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_5
    :try_start_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    return-object v0

    :cond_6
    :try_start_8
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v5, v4, [B

    move v6, v1

    :goto_1
    const/high16 v7, 0x40000

    if-ge v6, v7, :cond_8

    iget-boolean v8, p0, Ls3/b;->c:Z

    if-eqz v8, :cond_8

    sub-int/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v2, v5, v1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-gtz v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v3, v5, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    add-int/2addr v6, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v2

    goto :goto_3

    :cond_8
    :goto_2
    if-nez v6, :cond_a

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    :try_start_a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    :cond_9
    :try_start_b
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :catch_8
    return-object v0

    :cond_a
    :try_start_c
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :catch_9
    :try_start_e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    :catch_a
    :cond_b
    :try_start_f
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    :catch_b
    return-object v1

    :catchall_2
    move-exception v1

    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    goto :goto_3

    :catch_c
    move-object v2, v0

    goto :goto_4

    :goto_3
    if-eqz v0, :cond_c

    :try_start_10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    :catch_d
    :cond_c
    if-eqz v1, :cond_e

    :try_start_11
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    :catch_e
    :cond_d
    :try_start_12
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    :catch_f
    :cond_e
    throw p1

    :catch_10
    :goto_4
    if-eqz v2, :cond_f

    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    :catch_11
    :cond_f
    if-eqz p1, :cond_11

    :try_start_14
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12

    :catch_12
    :cond_10
    :try_start_15
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_13

    :catch_13
    :cond_11
    return-object v0
.end method

.method public final j(Ljava/net/DatagramPacket;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_21

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_e

    .line 21
    .line 22
    :cond_1
    const/16 v1, 0x25

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    if-lez v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_2
    iget-object v2, p0, Ls3/b;->a:Ly0/p;

    .line 36
    .line 37
    if-eqz v2, :cond_21

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ly0/p;->c(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_21

    .line 44
    .line 45
    iget-object v2, p0, Ls3/b;->a:Ly0/p;

    .line 46
    .line 47
    iget-object v2, v2, Ly0/p;->a:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    goto/16 :goto_e

    .line 58
    .line 59
    :cond_3
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz v2, :cond_21

    .line 72
    .line 73
    if-ltz v4, :cond_21

    .line 74
    .line 75
    if-lez p1, :cond_21

    .line 76
    .line 77
    array-length v5, v2

    .line 78
    sub-int/2addr v5, v4

    .line 79
    if-le p1, v5, :cond_4

    .line 80
    .line 81
    goto/16 :goto_e

    .line 82
    .line 83
    :cond_4
    new-instance v5, Ljava/lang/String;

    .line 84
    .line 85
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 86
    .line 87
    invoke-direct {v5, v2, v4, p1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 88
    .line 89
    .line 90
    const-string p1, "\r\n|\n|\r"

    .line 91
    .line 92
    invoke-virtual {v5, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    array-length v2, p1

    .line 97
    if-nez v2, :cond_5

    .line 98
    .line 99
    return-void

    .line 100
    :cond_5
    aget-object v2, p1, v3

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const-string v4, "HTTP/"

    .line 113
    .line 114
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_6

    .line 119
    .line 120
    const-string v4, " 200"

    .line 121
    .line 122
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_6

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    const-string v4, "NOTIFY"

    .line 130
    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_7

    .line 136
    .line 137
    return-void

    .line 138
    :cond_7
    :goto_0
    invoke-virtual {p0, v0}, Ls3/b;->b(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    new-instance v2, Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 144
    .line 145
    .line 146
    const/4 v4, 0x1

    .line 147
    move v5, v4

    .line 148
    :goto_1
    array-length v6, p1

    .line 149
    if-ge v5, v6, :cond_d

    .line 150
    .line 151
    aget-object v6, p1, v5

    .line 152
    .line 153
    if-nez v6, :cond_8

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-eqz v7, :cond_9

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_9
    const/16 v7, 0x3a

    .line 168
    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-gtz v7, :cond_a

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_a
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 185
    .line 186
    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    add-int/lit8 v7, v7, 0x1

    .line 191
    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-nez v7, :cond_c

    .line 205
    .line 206
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    if-eqz v7, :cond_b

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_b
    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    :cond_c
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_d
    :goto_3
    const-string p1, "LOCATION"

    .line 220
    .line 221
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p1, Ljava/lang/String;

    .line 226
    .line 227
    if-nez p1, :cond_e

    .line 228
    .line 229
    const-string p1, ""

    .line 230
    .line 231
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-nez v5, :cond_21

    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    const/16 v6, 0x200

    .line 246
    .line 247
    if-le v5, v6, :cond_f

    .line 248
    .line 249
    goto/16 :goto_e

    .line 250
    .line 251
    :cond_f
    :try_start_0
    new-instance v5, Ljava/net/URL;

    .line 252
    .line 253
    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    if-nez v7, :cond_10

    .line 261
    .line 262
    const-string v7, ""

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_10
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 270
    .line 271
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    :goto_4
    const-string v8, "http"

    .line 276
    .line 277
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-nez v8, :cond_11

    .line 282
    .line 283
    const-string v8, "https"

    .line 284
    .line 285
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    if-nez v7, :cond_11

    .line 290
    .line 291
    goto/16 :goto_d

    .line 292
    .line 293
    :cond_11
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    if-nez v5, :cond_12

    .line 298
    .line 299
    goto/16 :goto_d

    .line 300
    .line 301
    :cond_12
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-le v7, v4, :cond_13

    .line 310
    .line 311
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    const/16 v8, 0x5b

    .line 316
    .line 317
    if-ne v7, v8, :cond_13

    .line 318
    .line 319
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    sub-int/2addr v7, v4

    .line 324
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    const/16 v8, 0x5d

    .line 329
    .line 330
    if-ne v7, v8, :cond_13

    .line 331
    .line 332
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    sub-int/2addr v7, v4

    .line 337
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    :cond_13
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-lez v1, :cond_14

    .line 346
    .line 347
    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    :cond_14
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_15

    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_15
    invoke-static {v5}, Lf/u0;->c(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_20

    .line 363
    .line 364
    iget-object v1, p0, Ls3/b;->a:Ly0/p;

    .line 365
    .line 366
    if-eqz v1, :cond_20

    .line 367
    .line 368
    invoke-virtual {v1, v5}, Ly0/p;->c(Ljava/lang/String;)Z

    .line 369
    .line 370
    .line 371
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 372
    if-eqz v1, :cond_20

    .line 373
    .line 374
    :goto_5
    const-string v1, "SERVER"

    .line 375
    .line 376
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    check-cast v1, Ljava/lang/String;

    .line 381
    .line 382
    iget-object v2, p0, Ls3/z;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 383
    .line 384
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    check-cast v4, Ls3/p;

    .line 389
    .line 390
    if-eqz v4, :cond_17

    .line 391
    .line 392
    :cond_16
    :goto_6
    move-object v2, v4

    .line 393
    goto :goto_7

    .line 394
    :cond_17
    new-instance v4, Ls3/p;

    .line 395
    .line 396
    invoke-direct {v4}, Ls3/p;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    check-cast v2, Ls3/p;

    .line 404
    .line 405
    if-eqz v2, :cond_16

    .line 406
    .line 407
    move-object v4, v2

    .line 408
    goto :goto_6

    .line 409
    :goto_7
    monitor-enter v2

    .line 410
    :try_start_1
    iget-object v4, v2, Ls3/p;->a:Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    if-eqz v4, :cond_18

    .line 417
    .line 418
    iput-object p1, v2, Ls3/p;->a:Ljava/lang/String;

    .line 419
    .line 420
    goto :goto_8

    .line 421
    :catchall_0
    move-exception p1

    .line 422
    goto :goto_c

    .line 423
    :cond_18
    :goto_8
    iget-object v4, v2, Ls3/p;->j:Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    if-eqz v4, :cond_1b

    .line 430
    .line 431
    if-eqz v1, :cond_1b

    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    if-nez v4, :cond_1b

    .line 442
    .line 443
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    if-nez v1, :cond_19

    .line 448
    .line 449
    const-string v1, ""

    .line 450
    .line 451
    goto :goto_9

    .line 452
    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    const/16 v5, 0x100

    .line 457
    .line 458
    if-le v4, v5, :cond_1a

    .line 459
    .line 460
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    :cond_1a
    :goto_9
    iput-object v1, v2, Ls3/p;->j:Ljava/lang/String;

    .line 465
    .line 466
    :cond_1b
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    iget-object v1, p0, Ls3/z;->f:Ljava/util/Set;

    .line 468
    .line 469
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-lt v1, v6, :cond_1c

    .line 474
    .line 475
    return-void

    .line 476
    :cond_1c
    iget-object v1, p0, Ls3/z;->f:Ljava/util/Set;

    .line 477
    .line 478
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-nez v1, :cond_1d

    .line 483
    .line 484
    return-void

    .line 485
    :cond_1d
    iget-object v1, p0, Ls3/z;->n:Ljava/util/concurrent/ExecutorService;

    .line 486
    .line 487
    if-eqz v1, :cond_1f

    .line 488
    .line 489
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-eqz v2, :cond_1e

    .line 494
    .line 495
    goto :goto_b

    .line 496
    :cond_1e
    :try_start_2
    new-instance v2, Landroidx/emoji2/text/m;

    .line 497
    .line 498
    const/16 v3, 0x1a

    .line 499
    .line 500
    invoke-direct {v2, p0, v0, p1, v3}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 501
    .line 502
    .line 503
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 504
    .line 505
    .line 506
    goto :goto_a

    .line 507
    :catch_0
    iget-object v0, p0, Ls3/z;->f:Ljava/util/Set;

    .line 508
    .line 509
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    :goto_a
    return-void

    .line 513
    :cond_1f
    :goto_b
    iget-object v0, p0, Ls3/z;->f:Ljava/util/Set;

    .line 514
    .line 515
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    return-void

    .line 519
    :goto_c
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    throw p1

    .line 521
    :catch_1
    :cond_20
    :goto_d
    iget-boolean p1, p0, Ls3/z;->k:Z

    .line 522
    .line 523
    if-nez p1, :cond_21

    .line 524
    .line 525
    iput-boolean v4, p0, Ls3/z;->k:Z

    .line 526
    .line 527
    new-instance p1, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    const-string v0, " advertised off-host location, ignored"

    .line 536
    .line 537
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    invoke-virtual {p0, p1}, Ls3/b;->g(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    :cond_21
    :goto_e
    return-void
.end method

.method public final k(Ls3/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls3/z;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ls3/p;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ls3/p;

    .line 13
    .line 14
    invoke-direct {v1}, Ls3/p;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ls3/p;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    :cond_1
    :goto_0
    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v0, v1, Ls3/p;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iput-object p3, v1, Ls3/p;->a:Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :cond_2
    :goto_1
    iget-object v0, v1, Ls3/p;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p1, Ls3/p;->b:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v0, v1, Ls3/p;->b:Ljava/lang/String;

    .line 52
    .line 53
    :cond_3
    iget-object v0, v1, Ls3/p;->c:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    iget-object v0, p1, Ls3/p;->c:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v0, v1, Ls3/p;->c:Ljava/lang/String;

    .line 64
    .line 65
    :cond_4
    iget-object v0, v1, Ls3/p;->d:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    iget-object v0, p1, Ls3/p;->d:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v0, v1, Ls3/p;->d:Ljava/lang/String;

    .line 76
    .line 77
    :cond_5
    iget-object v0, v1, Ls3/p;->e:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    iget-object v0, p1, Ls3/p;->e:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v0, v1, Ls3/p;->e:Ljava/lang/String;

    .line 88
    .line 89
    :cond_6
    iget-object v0, v1, Ls3/p;->f:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    iget-object v0, p1, Ls3/p;->f:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v0, v1, Ls3/p;->f:Ljava/lang/String;

    .line 100
    .line 101
    :cond_7
    iget-object v0, v1, Ls3/p;->g:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_8

    .line 108
    .line 109
    iget-object v0, p1, Ls3/p;->g:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v0, v1, Ls3/p;->g:Ljava/lang/String;

    .line 112
    .line 113
    :cond_8
    iget-object v0, v1, Ls3/p;->h:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_9

    .line 120
    .line 121
    iget-object v0, p1, Ls3/p;->h:Ljava/lang/String;

    .line 122
    .line 123
    iput-object v0, v1, Ls3/p;->h:Ljava/lang/String;

    .line 124
    .line 125
    :cond_9
    iget-object v0, v1, Ls3/p;->i:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    iget-object v0, p1, Ls3/p;->i:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v0, v1, Ls3/p;->i:Ljava/lang/String;

    .line 136
    .line 137
    :cond_a
    iget-object p1, p1, Ls3/p;->k:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :cond_b
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_d

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Ljava/lang/String;

    .line 154
    .line 155
    iget-object v2, v1, Ls3/p;->k:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    const/16 v3, 0x20

    .line 162
    .line 163
    if-lt v2, v3, :cond_c

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_c
    if-eqz v0, :cond_b

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_b

    .line 173
    .line 174
    iget-object v2, v1, Ls3/p;->k:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-nez v2, :cond_b

    .line 181
    .line 182
    iget-object v2, v1, Ls3/p;->k:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_d
    :goto_3
    iget-object p1, v1, Ls3/p;->b:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_e

    .line 195
    .line 196
    iget-object p1, v1, Ls3/p;->e:Ljava/lang/String;

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_e
    iget-object p1, v1, Ls3/p;->b:Ljava/lang/String;

    .line 200
    .line 201
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const-string v0, " "

    .line 203
    .line 204
    invoke-static {p2, v0}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_f

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_f
    move-object p3, p1

    .line 216
    :goto_5
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Ls3/b;->c(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :goto_6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    throw p1
.end method

.method public final l()Ljava/net/MulticastSocket;
    .locals 6

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/MulticastSocket;

    invoke-direct {v3, v2}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    new-instance v4, Ljava/net/InetSocketAddress;

    const/16 v5, 0x76c

    invoke-direct {v4, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "bind 1900 failed ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "), retrying on ephemeral port"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ls3/b;->g(Ljava/lang/String;)V

    :try_start_3
    new-instance v3, Ljava/net/MulticastSocket;

    invoke-direct {v3, v2}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :try_start_4
    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :goto_1
    const/16 v2, 0x190

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    const/4 v2, 0x4

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :try_start_7
    iget-object v2, p0, Ls3/b;->a:Ly0/p;

    if-eqz v2, :cond_1

    iget-object v2, v2, Ly0/p;->k:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljava/net/NetworkInterface;

    if-eqz v4, :cond_1

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v3, v2}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_1
    :try_start_8
    iget-object v2, p0, Ls3/z;->h:Ljava/net/InetAddress;

    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    iput-boolean v1, p0, Ls3/z;->i:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_2

    :catch_6
    move-exception v1

    iput-boolean v0, p0, Ls3/z;->i:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "join failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls3/b;->c(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v3

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_3

    :try_start_9
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bind failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls3/b;->g(Ljava/lang/String;)V

    return-object v2
.end method
