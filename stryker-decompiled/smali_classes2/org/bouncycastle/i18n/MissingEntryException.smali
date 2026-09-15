.class public Lorg/bouncycastle/i18n/MissingEntryException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private debugMsg:Ljava/lang/String;

.field protected final key:Ljava/lang/String;

.field protected final loader:Ljava/lang/ClassLoader;

.field protected final locale:Ljava/util/Locale;

.field protected final resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/i18n/MissingEntryException;->resource:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/i18n/MissingEntryException;->key:Ljava/lang/String;

    iput-object p4, p0, Lorg/bouncycastle/i18n/MissingEntryException;->locale:Ljava/util/Locale;

    iput-object p5, p0, Lorg/bouncycastle/i18n/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lorg/bouncycastle/i18n/MissingEntryException;->resource:Ljava/lang/String;

    iput-object p4, p0, Lorg/bouncycastle/i18n/MissingEntryException;->key:Ljava/lang/String;

    iput-object p5, p0, Lorg/bouncycastle/i18n/MissingEntryException;->locale:Ljava/util/Locale;

    iput-object p6, p0, Lorg/bouncycastle/i18n/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDebugMsg()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Can not find entry "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lorg/bouncycastle/i18n/MissingEntryException;->key:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " in resource file "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/bouncycastle/i18n/MissingEntryException;->resource:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " for the locale "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lorg/bouncycastle/i18n/MissingEntryException;->locale:Ljava/util/Locale;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "."

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lorg/bouncycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v0, p0, Lorg/bouncycastle/i18n/MissingEntryException;->loader:Ljava/lang/ClassLoader;

    .line 49
    .line 50
    instance-of v1, v0, Ljava/net/URLClassLoader;

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    check-cast v0, Ljava/net/URLClassLoader;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lorg/bouncycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 66
    .line 67
    const-string v3, " The following entries in the classpath were searched: "

    .line 68
    .line 69
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lorg/bouncycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    :goto_0
    array-length v2, v0

    .line 77
    if-eq v1, v2, :cond_0

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lorg/bouncycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    aget-object v3, v0, v1

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v3, " "

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iput-object v2, p0, Lorg/bouncycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 104
    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/i18n/MissingEntryException;->debugMsg:Ljava/lang/String;

    .line 109
    .line 110
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/MissingEntryException;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/MissingEntryException;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/MissingEntryException;->resource:Ljava/lang/String;

    return-object v0
.end method
