.class public Lcom/stryker/terminal/component/pm/NeoPackageParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;
    }
.end annotation


# static fields
.field private static final KEY_ARCH:Ljava/lang/String; = "Architecture"

.field private static final KEY_DEPENDS:Ljava/lang/String; = "Depends"

.field private static final KEY_DESC:Ljava/lang/String; = "Description"

.field private static final KEY_ESSENTIAL:Ljava/lang/String; = "Essential"

.field private static final KEY_FILENAME:Ljava/lang/String; = "Filename"

.field private static final KEY_HOMEPAGE:Ljava/lang/String; = "Homepage"

.field private static final KEY_INSTALLED_SIZE:Ljava/lang/String; = "Installed-Size"

.field private static final KEY_MAINTAINER:Ljava/lang/String; = "Maintainer"

.field private static final KEY_MD5:Ljava/lang/String; = "MD5sum"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "Package"

.field private static final KEY_SHA1:Ljava/lang/String; = "SHA1"

.field private static final KEY_SHA256:Ljava/lang/String; = "SHA256"

.field private static final KEY_SIZE:Ljava/lang/String; = "Size"

.field private static final KEY_VERSION:Ljava/lang/String; = "Version"


# instance fields
.field private reader:Ljava/io/BufferedReader;

.field private stateListener:Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageParser;->reader:Ljava/io/BufferedReader;

    return-void
.end method

.method private appendToLastValue(Lcom/stryker/terminal/component/pm/NeoPackageInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private splitKeyAndValue(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    return v0
.end method


# virtual methods
.method public parse()V
    .locals 9

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageParser;->stateListener:Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0}, Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;->onStartState()V

    const/4 v0, 0x0

    move-object v3, v0

    :goto_0
    iget-object v4, p0, Lcom/stryker/terminal/component/pm/NeoPackageParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4, v2}, Lcom/stryker/terminal/component/pm/NeoPackageParser;->splitKeyAndValue(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    aget-object v3, v2, v7

    aget-object v4, v2, v6

    move v5, v7

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move v5, v6

    :goto_1
    const-string v8, "Package"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/stryker/terminal/component/pm/NeoPackageParser;->stateListener:Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;

    invoke-interface {v8, v0}, Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;->onEndParsePackage(Lcom/stryker/terminal/component/pm/NeoPackageInfo;)V

    :cond_4
    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageParser;->stateListener:Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;

    invoke-interface {v0}, Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;->onCreatePackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/stryker/terminal/component/pm/NeoPackageParser;->stateListener:Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;

    invoke-interface {v8, v4, v0}, Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;->onStartParsePackage(Ljava/lang/String;Lcom/stryker/terminal/component/pm/NeoPackageInfo;)V

    :cond_5
    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    invoke-direct {p0, v0, v3, v4}, Lcom/stryker/terminal/component/pm/NeoPackageParser;->appendToLastValue(Lcom/stryker/terminal/component/pm/NeoPackageInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v8, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_2
    move v6, v8

    goto/16 :goto_3

    :sswitch_0
    const-string v5, "Version"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    const/16 v6, 0xc

    goto/16 :goto_3

    :sswitch_1
    const-string v5, "Installed-Size"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    const/16 v6, 0xb

    goto/16 :goto_3

    :sswitch_2
    const-string v5, "Architecture"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_2

    :cond_a
    const/16 v6, 0xa

    goto/16 :goto_3

    :sswitch_3
    const-string v5, "Essential"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_2

    :cond_b
    const/16 v6, 0x9

    goto/16 :goto_3

    :sswitch_4
    const-string v5, "Size"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_2

    :cond_c
    const/16 v6, 0x8

    goto/16 :goto_3

    :sswitch_5
    const-string v5, "SHA1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_2

    :cond_d
    const/4 v6, 0x7

    goto :goto_3

    :sswitch_6
    const-string v5, "Description"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_2

    :cond_e
    const/4 v6, 0x6

    goto :goto_3

    :sswitch_7
    const-string v5, "Homepage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_2

    :cond_f
    const/4 v6, 0x5

    goto :goto_3

    :sswitch_8
    const-string v5, "Filename"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_2

    :cond_10
    const/4 v6, 0x4

    goto :goto_3

    :sswitch_9
    const-string v5, "Maintainer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_2

    :cond_11
    const/4 v6, 0x3

    goto :goto_3

    :sswitch_a
    const-string v5, "Depends"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_2

    :cond_12
    move v6, v1

    goto :goto_3

    :sswitch_b
    const-string v5, "SHA256"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_2

    :sswitch_c
    const-string v5, "MD5sum"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto/16 :goto_2

    :cond_13
    move v6, v7

    :cond_14
    :goto_3
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setInstalledSizeInBytes(J)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v5, Lcom/stryker/terminal/component/pm/Architecture;->Companion:Lcom/stryker/terminal/component/pm/Architecture$Companion;

    invoke-virtual {v5, v4}, Lcom/stryker/terminal/component/pm/Architecture$Companion;->parse(Ljava/lang/String;)Lcom/stryker/terminal/component/pm/Architecture;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setArchitecture(Lcom/stryker/terminal/component/pm/Architecture;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v5, "yes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setEssential(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setSizeInBytes(J)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v0, v4}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setSha1(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v0, v4}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v0, v4}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setHomePage(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v0, v4}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setFileName(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v0, v4}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setMaintainer(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {v0, v4}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setDependenciesString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v0, v4}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setSha256(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v0, v4}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setMd5(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/stryker/terminal/component/pm/NeoPackageParser;->stateListener:Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;

    invoke-interface {v1, v0}, Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;->onEndParsePackage(Lcom/stryker/terminal/component/pm/NeoPackageInfo;)V

    :cond_16
    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageParser;->stateListener:Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;

    invoke-interface {v0}, Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;->onEndState()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78c2c3f3 -> :sswitch_c
        -0x6e48d9b9 -> :sswitch_b
        -0x4024f099 -> :sswitch_a
        -0x36379868 -> :sswitch_9
        -0x27f149d9 -> :sswitch_8
        -0x1913cbf2 -> :sswitch_7
        -0x360d424 -> :sswitch_6
        0x26d125 -> :sswitch_5
        0x275421 -> :sswitch_4
        0x16a3932e -> :sswitch_3
        0x3bd7bd73 -> :sswitch_2
        0x4cc6a6b4 -> :sswitch_1
        0x782db4b8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStateListener(Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageParser;->stateListener:Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;

    return-void
.end method
