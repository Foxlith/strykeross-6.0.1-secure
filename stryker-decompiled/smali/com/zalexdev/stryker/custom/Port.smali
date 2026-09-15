.class public Lcom/zalexdev/stryker/custom/Port;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private banner:Ljava/lang/String;

.field private portName:Ljava/lang/String;

.field private portNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Port;->portNumber:Ljava/lang/String;

    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Port;->portName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Port;->banner:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Port;->portNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/zalexdev/stryker/custom/Port;->portName:Ljava/lang/String;

    iput-object p3, p0, Lcom/zalexdev/stryker/custom/Port;->banner:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBanner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Port;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getPortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Port;->portName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Port;->portNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setBanner(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Port;->banner:Ljava/lang/String;

    return-void
.end method

.method public setPortName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Port;->portName:Ljava/lang/String;

    return-void
.end method

.method public setPortNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Port;->portNumber:Ljava/lang/String;

    return-void
.end method
