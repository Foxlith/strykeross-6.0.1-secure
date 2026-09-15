.class public final Lcom/stryker/terminal/component/session/SessionComponent$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/component/session/SessionComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stryker/terminal/component/session/SessionComponent$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkLibrariesLoaded(Lcom/stryker/terminal/component/session/SessionComponent$Companion;)Z
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/component/session/SessionComponent$Companion;->checkLibrariesLoaded()Z

    move-result p0

    return p0
.end method

.method private final checkLibrariesLoaded()Z
    .locals 2

    invoke-static {}, Lcom/stryker/terminal/component/session/SessionComponent;->access$getIS_LIBRARIES_LOADED$cp()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/stryker/terminal/component/session/SessionComponent;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/stryker/terminal/component/session/SessionComponent;->access$getIS_LIBRARIES_LOADED$cp()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/stryker/terminal/component/session/SessionComponent;->Companion:Lcom/stryker/terminal/component/session/SessionComponent$Companion;

    invoke-direct {v1}, Lcom/stryker/terminal/component/session/SessionComponent$Companion;->loadLibraries()Z

    move-result v1

    invoke-static {v1}, Lcom/stryker/terminal/component/session/SessionComponent;->access$setIS_LIBRARIES_LOADED$cp(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    invoke-static {}, Lcom/stryker/terminal/component/session/SessionComponent;->access$getIS_LIBRARIES_LOADED$cp()Z

    move-result v0

    return v0
.end method

.method private final loadLibraries()Z
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeDynamicallyLoadedCode"
        }
    .end annotation

    .line 1
    const-string v0, "SessionComponent"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    sget-boolean v3, Lcom/stryker/terminal/Globals;->NeedGles3:Z

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    const-string v3, "GLESv3"

    .line 10
    .line 11
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v3, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 15
    .line 16
    new-array v4, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v5, "Loaded GLESv3 lib"

    .line 19
    .line 20
    aput-object v5, v4, v2

    .line 21
    .line 22
    invoke-virtual {v3, v0, v4}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-boolean v3, Lcom/stryker/terminal/Globals;->NeedGles2:Z

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    const-string v3, "GLESv2"

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v3, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 36
    .line 37
    new-array v4, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v5, "Loaded GLESv2 lib"

    .line 40
    .line 41
    aput-object v5, v4, v2

    .line 42
    .line 43
    invoke-virtual {v3, v0, v4}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    sget-object v3, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 48
    .line 49
    const-string v4, "Cannot load GLESv3 or GLESv2 lib"

    .line 50
    .line 51
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v0, v4}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    :try_start_1
    sget-object v3, Lcom/stryker/terminal/Globals;->XLIBS:[Ljava/lang/String;

    .line 59
    .line 60
    const-string v4, "XLIBS"

    .line 61
    .line 62
    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v4, Lcom/stryker/terminal/Globals;->XAPP_LIBS:[Ljava/lang/String;

    .line 66
    .line 67
    const-string v5, "XAPP_LIBS"

    .line 68
    .line 69
    invoke-static {v4, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    array-length v5, v3

    .line 73
    array-length v6, v4

    .line 74
    add-int v7, v5, v6

    .line 75
    .line 76
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v4, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .line 82
    .line 83
    const-string v4, "result"

    .line 84
    .line 85
    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    array-length v4, v3

    .line 89
    move v5, v2

    .line 90
    :goto_1
    if-ge v5, v4, :cond_2

    .line 91
    .line 92
    aget-object v6, v3, v5

    .line 93
    .line 94
    check-cast v6, Ljava/lang/String;

    .line 95
    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v8, "/data/data/com.zalexdev.stryker/files/usr/lib/xorg-neoterm/"

    .line 102
    .line 103
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    sget-object v8, Lcom/stryker/terminal/component/session/SessionComponent;->Companion:Lcom/stryker/terminal/component/session/SessionComponent$Companion;

    .line 107
    .line 108
    const-string v9, "it"

    .line 109
    .line 110
    invoke-static {v6, v9}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v8, v6}, Lcom/stryker/terminal/component/session/SessionComponent$Companion;->wrapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    sget-object v7, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 125
    .line 126
    new-array v8, v1, [Ljava/lang/Object;

    .line 127
    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v10, "Loading lib "

    .line 134
    .line 135
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    aput-object v9, v8, v2

    .line 146
    .line 147
    invoke-virtual {v7, v0, v8}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2

    .line 148
    .line 149
    .line 150
    :try_start_2
    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :catch_1
    move-exception v7

    .line 155
    :try_start_3
    sget-object v8, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 156
    .line 157
    new-array v9, v1, [Ljava/lang/Object;

    .line 158
    .line 159
    new-instance v10, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v11, "Error loading lib "

    .line 165
    .line 166
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v6, ", reason: "

    .line 173
    .line 174
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    aput-object v6, v9, v2

    .line 189
    .line 190
    invoke-virtual {v8, v0, v9}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_2

    .line 191
    .line 192
    .line 193
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :catch_2
    move-exception v1

    .line 197
    sget-object v3, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const-string v4, "ignore.localizedMessage"

    .line 204
    .line 205
    invoke-static {v1, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v3, v0, v1}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    move v1, v2

    .line 216
    :cond_2
    return v1
.end method

.method private final wrapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "lib"

    .line 2
    .line 3
    const-string v1, ".so"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
