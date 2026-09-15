.class public final Lcom/stryker/terminal/utils/NLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/utils/NLog$TYPE;
    }
.end annotation


# static fields
.field public static final A:I = 0x7

.field private static final ARGS:Ljava/lang/String;

.field public static final D:I = 0x3

.field public static final E:I = 0x6

.field private static final FILE:I

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field public static final I:I = 0x4

.field public static final INSTANCE:Lcom/stryker/terminal/utils/NLog;

.field private static final LINE_SEP:Ljava/lang/String;

.field private static final MAX_LEN:I

.field private static final NULL_TIPS:Ljava/lang/String;

.field private static final T:[C

.field public static final V:I = 0x2

.field public static final W:I = 0x5

.field private static executor:Ljava/util/concurrent/ExecutorService;

.field private static logDir:Ljava/lang/String;

.field private static sConsoleFilter:I

.field private static sFileFilter:I

.field private static sGlobalTag:Ljava/lang/String;

.field private static sLog2ConsoleSwitch:Z

.field private static sLog2FileSwitch:Z

.field private static sLogHeadSwitch:Z

.field private static sLogSwitch:Z

.field private static sTagIsSpace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stryker/terminal/utils/NLog;

    invoke-direct {v0}, Lcom/stryker/terminal/utils/NLog;-><init>()V

    sput-object v0, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/stryker/terminal/utils/NLog;->T:[C

    const/16 v0, 0x10

    sput v0, Lcom/stryker/terminal/utils/NLog;->FILE:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/stryker/terminal/utils/NLog;->sLogSwitch:Z

    sput-boolean v0, Lcom/stryker/terminal/utils/NLog;->sLog2ConsoleSwitch:Z

    const-string v1, ""

    sput-object v1, Lcom/stryker/terminal/utils/NLog;->sGlobalTag:Ljava/lang/String;

    sput-boolean v0, Lcom/stryker/terminal/utils/NLog;->sTagIsSpace:Z

    sput-boolean v0, Lcom/stryker/terminal/utils/NLog;->sLogHeadSwitch:Z

    const/4 v0, 0x2

    sput v0, Lcom/stryker/terminal/utils/NLog;->sConsoleFilter:I

    sput v0, Lcom/stryker/terminal/utils/NLog;->sFileFilter:I

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stryker/terminal/utils/NLog;->LINE_SEP:Ljava/lang/String;

    const/16 v0, 0xfa0

    sput v0, Lcom/stryker/terminal/utils/NLog;->MAX_LEN:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS "

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/stryker/terminal/utils/NLog;->FORMAT:Ljava/text/SimpleDateFormat;

    const-string v0, "Log with null object."

    sput-object v0, Lcom/stryker/terminal/utils/NLog;->NULL_TIPS:Ljava/lang/String;

    const-string v0, "args"

    sput-object v0, Lcom/stryker/terminal/utils/NLog;->ARGS:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x56s
        0x44s
        0x49s
        0x57s
        0x45s
        0x41s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/utils/NLog;->printToFile$lambda$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final createOrExistsDir(Ljava/io/File;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final createOrExistsFile(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stryker/terminal/utils/NLog;->createOrExistsDir(Ljava/io/File;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private final isSpace(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/stryker/terminal/utils/NLog;->sLogSwitch:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    sget-boolean v0, Lcom/stryker/terminal/utils/NLog;->sLog2ConsoleSwitch:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-boolean v0, Lcom/stryker/terminal/utils/NLog;->sLog2FileSwitch:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    and-int/lit8 v0, p1, 0xf

    .line 15
    .line 16
    and-int/lit16 p1, p1, 0xf0

    .line 17
    .line 18
    sget v1, Lcom/stryker/terminal/utils/NLog;->sConsoleFilter:I

    .line 19
    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    sget v1, Lcom/stryker/terminal/utils/NLog;->sFileFilter:I

    .line 23
    .line 24
    if-ge v0, v1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-direct {p0, p2}, Lcom/stryker/terminal/utils/NLog;->processTagAndHead(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    array-length v1, p3

    .line 32
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-direct {p0, p3}, Lcom/stryker/terminal/utils/NLog;->processBody([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    sget-boolean v1, Lcom/stryker/terminal/utils/NLog;->sLog2ConsoleSwitch:Z

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    sget v1, Lcom/stryker/terminal/utils/NLog;->sConsoleFilter:I

    .line 46
    .line 47
    if-lt v0, v1, :cond_2

    .line 48
    .line 49
    aget-object v1, p2, v2

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    aget-object v4, p2, v4

    .line 58
    .line 59
    invoke-static {v3, v4, p3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-direct {p0, v0, v1, v3}, Lcom/stryker/terminal/utils/NLog;->printToConsole(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    sget-boolean v1, Lcom/stryker/terminal/utils/NLog;->sLog2FileSwitch:Z

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    sget v1, Lcom/stryker/terminal/utils/NLog;->FILE:I

    .line 71
    .line 72
    if-ne p1, v1, :cond_4

    .line 73
    .line 74
    :cond_3
    sget p1, Lcom/stryker/terminal/utils/NLog;->sFileFilter:I

    .line 75
    .line 76
    if-lt v0, p1, :cond_4

    .line 77
    .line 78
    aget-object p1, p2, v2

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x2

    .line 86
    aget-object p2, p2, v2

    .line 87
    .line 88
    invoke-static {v1, p2, p3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-direct {p0, v0, p1, p2}, Lcom/stryker/terminal/utils/NLog;->printToFile(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_0
    return-void
.end method

.method private final print(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final printToConsole(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/stryker/terminal/utils/NLog;->MAX_LEN:I

    div-int v2, v0, v1

    if-lez v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v3}, Lcom/stryker/terminal/utils/NLog;->print(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v3, v2, :cond_0

    :goto_0
    sget v5, Lcom/stryker/terminal/utils/NLog;->MAX_LEN:I

    add-int v6, v1, v5

    invoke-virtual {p3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v6}, Lcom/stryker/terminal/utils/NLog;->print(ILjava/lang/String;Ljava/lang/String;)V

    add-int/2addr v1, v5

    if-eq v3, v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/stryker/terminal/utils/NLog;->print(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final printToFile(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/stryker/terminal/utils/NLog;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "format"

    .line 17
    .line 18
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x5

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 28
    .line 29
    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x6

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "this as java.lang.String).substring(startIndex)"

    .line 38
    .line 39
    invoke-static {v0, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object v3, Lcom/stryker/terminal/utils/NLog;->logDir:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ".txt"

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {p0, v1}, Lcom/stryker/terminal/utils/NLog;->createOrExistsFile(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_0

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string p3, "log to "

    .line 73
    .line 74
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p3, " failed!"

    .line 81
    .line 82
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_0
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget-object v2, Lcom/stryker/terminal/utils/NLog;->T:[C

    .line 98
    .line 99
    const/4 v3, 0x2

    .line 100
    sub-int/2addr p1, v3

    .line 101
    aget-char p1, v2, p1

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, "/"

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    sget-object p1, Lcom/stryker/terminal/utils/NLog;->LINE_SEP:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string p3, "sb.toString()"

    .line 127
    .line 128
    invoke-static {p1, p3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sget-object p3, Lcom/stryker/terminal/utils/NLog;->executor:Ljava/util/concurrent/ExecutorService;

    .line 132
    .line 133
    if-nez p3, :cond_1

    .line 134
    .line 135
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    sput-object p3, Lcom/stryker/terminal/utils/NLog;->executor:Ljava/util/concurrent/ExecutorService;

    .line 140
    .line 141
    :cond_1
    sget-object p3, Lcom/stryker/terminal/utils/NLog;->executor:Ljava/util/concurrent/ExecutorService;

    .line 142
    .line 143
    invoke-static {p3}, Li5/a;->m(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Landroidx/emoji2/text/m;

    .line 147
    .line 148
    invoke-direct {v0, v1, p1, p2, v3}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 149
    .line 150
    .line 151
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method private static final printToFile$lambda$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "log to "

    const-string v1, "$fullPath"

    invoke-static {p0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$content"

    invoke-static {p1, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$tag"

    invoke-static {p2, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_3
    throw p0
.end method

.method private final varargs processBody([Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/stryker/terminal/utils/NLog;->NULL_TIPS:Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v1, v3

    if-eqz v1, :cond_3

    array-length v0, p1

    if-ne v0, v3, :cond_1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    sget-object v5, Lcom/stryker/terminal/utils/NLog;->ARGS:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/stryker/terminal/utils/NLog;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, p1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method private final processTagAndHead(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    .line 1
    sget-boolean v0, Lcom/stryker/terminal/utils/NLog;->sTagIsSpace:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/stryker/terminal/utils/NLog;->sLogHeadSwitch:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/stryker/terminal/utils/NLog;->sGlobalTag:Ljava/lang/String;

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/stryker/terminal/utils/NLog;->sGlobalTag:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x2d

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Ljava/lang/Throwable;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x3

    .line 45
    aget-object v0, v0, v1

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "className"

    .line 52
    .line 53
    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v3, "\\."

    .line 57
    .line 58
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string v4, "compile(pattern)"

    .line 63
    .line 64
    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    invoke-static {v5}, Lq5/h;->F1(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    const/16 v7, 0xa

    .line 80
    .line 81
    if-nez v6, :cond_1

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v3}, Lv1/f;->F(Ljava/lang/Object;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .line 96
    .line 97
    move v8, v5

    .line 98
    :cond_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-nez v9, :cond_2

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-object v3, v6

    .line 139
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    sget-object v8, Lx4/o;->a:Lx4/o;

    .line 144
    .line 145
    const/4 v9, 0x1

    .line 146
    if-nez v6, :cond_4

    .line 147
    .line 148
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    invoke-interface {v3, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-eqz v10, :cond_4

    .line 161
    .line 162
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    check-cast v10, Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    if-nez v10, :cond_3

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_3
    invoke-interface {v6}, Ljava/util/ListIterator;->nextIndex()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    add-int/2addr v6, v9

    .line 180
    invoke-static {v3, v6}, Lx4/m;->D0(Ljava/util/List;I)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    goto :goto_2

    .line 185
    :cond_4
    move-object v3, v8

    .line 186
    :goto_2
    new-array v6, v5, [Ljava/lang/String;

    .line 187
    .line 188
    invoke-interface {v3, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, [Ljava/lang/String;

    .line 193
    .line 194
    array-length v6, v3

    .line 195
    if-nez v6, :cond_5

    .line 196
    .line 197
    move v6, v9

    .line 198
    goto :goto_3

    .line 199
    :cond_5
    move v6, v5

    .line 200
    :goto_3
    xor-int/2addr v6, v9

    .line 201
    if-eqz v6, :cond_6

    .line 202
    .line 203
    array-length v1, v3

    .line 204
    sub-int/2addr v1, v9

    .line 205
    aget-object v1, v3, v1

    .line 206
    .line 207
    :cond_6
    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string v3, "$"

    .line 211
    .line 212
    invoke-static {v1, v3, v5}, Lq5/h;->m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_b

    .line 217
    .line 218
    const-string v3, "\\$"

    .line 219
    .line 220
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v5}, Lq5/h;->F1(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-nez v4, :cond_7

    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v1}, Lv1/f;->F(Ljava/lang/Object;)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    goto :goto_4

    .line 249
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    .line 253
    .line 254
    move v6, v5

    .line 255
    :cond_8
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    if-nez v7, :cond_8

    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-object v1, v4

    .line 296
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-nez v3, :cond_a

    .line 301
    .line 302
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    :goto_5
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-eqz v4, :cond_a

    .line 315
    .line 316
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    check-cast v4, Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-nez v4, :cond_9

    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_9
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    add-int/2addr v3, v9

    .line 334
    invoke-static {v1, v3}, Lx4/m;->D0(Ljava/util/List;I)Ljava/util/List;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    :cond_a
    new-array v1, v5, [Ljava/lang/String;

    .line 339
    .line 340
    invoke-interface {v8, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    check-cast v1, [Ljava/lang/String;

    .line 345
    .line 346
    aget-object v1, v1, v5

    .line 347
    .line 348
    :cond_b
    sget-boolean v3, Lcom/stryker/terminal/utils/NLog;->sTagIsSpace:Z

    .line 349
    .line 350
    if-eqz v3, :cond_c

    .line 351
    .line 352
    invoke-direct {p0, p1}, Lcom/stryker/terminal/utils/NLog;->isSpace(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    if-eqz v3, :cond_c

    .line 357
    .line 358
    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    move-object p1, v1

    .line 362
    :cond_c
    sget-boolean v1, Lcom/stryker/terminal/utils/NLog;->sLogHeadSwitch:Z

    .line 363
    .line 364
    if-eqz v1, :cond_d

    .line 365
    .line 366
    new-instance v1, Ljava/util/Formatter;

    .line 367
    .line 368
    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    const-string v2, "[Thread:%s], %s(%s:%d): "

    .line 400
    .line 401
    invoke-virtual {v1, v2, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    const-string v1, "Formatter()\n          .f\u2026  )\n          .toString()"

    .line 410
    .line 411
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    filled-new-array {p1, v0, v0}, [Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    return-object p1

    .line 419
    :cond_d
    :goto_6
    const-string v0, ""

    .line 420
    .line 421
    const-string v1, ": "

    .line 422
    .line 423
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 2
    const-string v0, "contents"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/utils/NLog;->sGlobalTag:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0, p1}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    const-string v0, "tag"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final compress([B)[B
    .locals 4

    const-string v0, "input"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/Deflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Deflater;-><init>(I)V

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    const/16 p1, 0x800

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "bos.toByteArray()"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    throw p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "contents"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/utils/NLog;->sGlobalTag:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, p1}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    const-string v0, "tag"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "contents"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/utils/NLog;->sGlobalTag:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0, p1}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    const-string v0, "tag"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final file(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "contents"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/stryker/terminal/utils/NLog;->FILE:I

    or-int/2addr p1, v0

    sget-object v0, Lcom/stryker/terminal/utils/NLog;->sGlobalTag:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final file(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    const-string v0, "tag"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/stryker/terminal/utils/NLog;->FILE:I

    or-int/2addr p1, v0

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final file(Ljava/lang/Object;)V
    .locals 2

    .line 3
    const-string v0, "contents"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/stryker/terminal/utils/NLog;->FILE:I

    or-int/lit8 v0, v0, 0x3

    sget-object v1, Lcom/stryker/terminal/utils/NLog;->sGlobalTag:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final file(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 4
    const-string v0, "tag"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/stryker/terminal/utils/NLog;->FILE:I

    or-int/lit8 v0, v0, 0x3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "contents"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/utils/NLog;->sGlobalTag:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p1}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    const-string v0, "tag"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/stryker/terminal/utils/NLog;->logDir:Ljava/lang/String;

    const-string p1, "NeoTerm"

    sput-object p1, Lcom/stryker/terminal/utils/NLog;->sGlobalTag:Ljava/lang/String;

    return-void
.end method

.method public final uncompress([B)[B
    .locals 4

    const-string v0, "input"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    const/16 p1, 0x800

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v2

    :goto_1
    invoke-virtual {v0, p1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "bos.toByteArray()"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    throw p1
.end method

.method public final v(Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "contents"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/utils/NLog;->sGlobalTag:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    const-string v0, "tag"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "contents"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/utils/NLog;->sGlobalTag:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0, p1}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    const-string v0, "tag"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/stryker/terminal/utils/NLog;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
