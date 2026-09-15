.class public final Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldColorSchemeConfigureFile;
.super Lcom/stryker/terminal/component/config/NeoConfigureFile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OldColorSchemeConfigureFile"
.end annotation


# instance fields
.field private configVisitor:Lt4/a;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "configureFile"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/component/config/NeoConfigureFile;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getConfigVisitor()Lt4/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldColorSchemeConfigureFile;->configVisitor:Lt4/a;

    return-object v0
.end method

.method public parseConfigure()Z
    .locals 9

    .line 1
    const-string v0, "null cannot be cast to non-null type kotlin.String"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lt4/a;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v3, Lu4/d;

    .line 10
    .line 11
    const-string v4, "global"

    .line 12
    .line 13
    invoke-direct {v3, v4}, Lu4/d;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v3, v2, Lt4/a;->b:Lu4/d;

    .line 17
    .line 18
    iput-object v3, v2, Lt4/a;->a:Lu4/d;

    .line 19
    .line 20
    const-string v3, "color-scheme"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lt4/a;->d(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v2, Lt4/a;->b:Lu4/d;

    .line 26
    .line 27
    invoke-static {v3}, Li5/a;->m(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string v4, "name"

    .line 31
    .line 32
    new-instance v5, Lu4/e;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/stryker/terminal/component/config/NeoConfigureFile;->getConfigureFile()Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static {v6}, Lg5/i;->k0(Ljava/io/File;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-direct {v5, v6}, Lu4/e;-><init>(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4, v5}, Lu4/d;->a(Ljava/lang/String;Lu4/e;)V

    .line 46
    .line 47
    .line 48
    const-string v4, "version"

    .line 49
    .line 50
    new-instance v5, Lu4/e;

    .line 51
    .line 52
    const-string v6, "1.0"

    .line 53
    .line 54
    invoke-direct {v5, v6}, Lu4/e;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4, v5}, Lu4/d;->a(Ljava/lang/String;Lu4/e;)V

    .line 58
    .line 59
    .line 60
    const-string v3, "colors"

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Lt4/a;->d(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Ljava/io/FileInputStream;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/stryker/terminal/component/config/NeoConfigureFile;->getConfigureFile()Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    :try_start_1
    new-instance v4, Ljava/util/Properties;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_0

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Ljava/util/Map$Entry;

    .line 101
    .line 102
    iget-object v6, v2, Lt4/a;->b:Lu4/d;

    .line 103
    .line 104
    invoke-static {v6}, Li5/a;->m(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-static {v7, v0}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    check-cast v7, Ljava/lang/String;

    .line 115
    .line 116
    new-instance v8, Lu4/e;

    .line 117
    .line 118
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v5, v0}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    check-cast v5, Ljava/lang/String;

    .line 126
    .line 127
    invoke-direct {v8, v5}, Lu4/e;-><init>(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v7, v8}, Lu4/d;->a(Ljava/lang/String;Lu4/e;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    goto :goto_2

    .line 136
    :cond_0
    iget-object v0, v2, Lt4/a;->b:Lu4/d;

    .line 137
    .line 138
    :goto_1
    if-eqz v0, :cond_1

    .line 139
    .line 140
    iget-object v4, v0, Lu4/d;->d:Lu4/d;

    .line 141
    .line 142
    if-eqz v4, :cond_1

    .line 143
    .line 144
    move-object v0, v4

    .line 145
    goto :goto_1

    .line 146
    :cond_1
    iput-object v0, v2, Lt4/a;->b:Lu4/d;

    .line 147
    .line 148
    invoke-virtual {p0, v2}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldColorSchemeConfigureFile;->setConfigVisitor(Lt4/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .line 150
    .line 151
    :try_start_2
    invoke-static {v3, v1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .line 153
    .line 154
    const/4 v0, 0x1

    .line 155
    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    goto :goto_3

    .line 158
    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    :catchall_1
    move-exception v2

    .line 160
    :try_start_4
    invoke-static {v3, v0}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 164
    :goto_3
    invoke-virtual {p0, v1}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldColorSchemeConfigureFile;->setConfigVisitor(Lt4/a;)V

    .line 165
    .line 166
    .line 167
    sget-object v1, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 168
    .line 169
    const-string v2, "Error while loading old config"

    .line 170
    .line 171
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v2, "ConfigureLoader"

    .line 176
    .line 177
    invoke-virtual {v1, v2, v0}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    const/4 v0, 0x0

    .line 181
    return v0
.end method

.method public setConfigVisitor(Lt4/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldColorSchemeConfigureFile;->configVisitor:Lt4/a;

    return-void
.end method
