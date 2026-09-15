.class public Lcom/stryker/terminal/component/config/NeoConfigureFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final configParser:Lt4/o;

.field private configVisitor:Lt4/a;

.field private final configureFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "configureFile"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/config/NeoConfigureFile;->configureFile:Ljava/io/File;

    new-instance p1, Lt4/o;

    invoke-direct {p1}, Lt4/o;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/config/NeoConfigureFile;->configParser:Lt4/o;

    return-void
.end method


# virtual methods
.method public getConfigVisitor()Lt4/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/component/config/NeoConfigureFile;->configVisitor:Lt4/a;

    return-object v0
.end method

.method public final getConfigureFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/config/NeoConfigureFile;->configureFile:Ljava/io/File;

    return-object v0
.end method

.method public final getVisitor()Lt4/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/stryker/terminal/component/config/NeoConfigureFile;->getConfigVisitor()Lt4/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Configure file not loaded or parse failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseConfigure()Z
    .locals 5

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/stryker/terminal/component/config/NeoConfigureFile;->configureFile:Ljava/io/File;

    .line 8
    .line 9
    invoke-static {v0}, Lc3/a;->j(Ljava/io/File;)Ljava/nio/file/Path;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lc3/a;->B(Ljava/nio/file/Path;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "readAllBytes(configureFile.toPath())"

    .line 18
    .line 19
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/String;

    .line 23
    .line 24
    sget-object v2, Lq5/a;->a:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/stryker/terminal/component/config/NeoConfigureFile;->configParser:Lt4/o;

    .line 30
    .line 31
    iget-object v2, v0, Lt4/o;->a:Lt4/l;

    .line 32
    .line 33
    iput-object v1, v2, Lt4/l;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0}, Lt4/o;->e()Lt4/p;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-class v1, Lt4/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    :try_start_1
    new-instance v3, Lv1/c;

    .line 43
    .line 44
    new-array v4, v2, [Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-array v4, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v4, "callbackInterface.getDec\u2026nstructor().newInstance()"

    .line 57
    .line 58
    invoke-static {v1, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v1, Lt4/a;

    .line 62
    .line 63
    invoke-direct {v3, v0, v1}, Lv1/c;-><init>(Li5/a;Lt4/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    const/4 v3, 0x0

    .line 68
    :goto_0
    if-nez v3, :cond_0

    .line 69
    .line 70
    return v2

    .line 71
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lv1/c;->j()V

    .line 72
    .line 73
    .line 74
    iget-object v0, v3, Lv1/c;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lt4/a;

    .line 77
    .line 78
    const-string v1, "null cannot be cast to non-null type T of io.neolang.frontend.AstVisitor.getCallback"

    .line 79
    .line 80
    invoke-static {v0, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/stryker/terminal/component/config/NeoConfigureFile;->setConfigVisitor(Lt4/a;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    :goto_1
    sget-object v0, Lw4/h;->a:Lw4/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :goto_2
    new-instance v1, Lw4/d;

    .line 93
    .line 94
    invoke-direct {v1, v0}, Lw4/d;-><init>(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    move-object v0, v1

    .line 98
    :goto_3
    instance-of v0, v0, Lw4/d;

    .line 99
    .line 100
    xor-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    return v0
.end method

.method public setConfigVisitor(Lt4/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stryker/terminal/component/config/NeoConfigureFile;->configVisitor:Lt4/a;

    return-void
.end method
