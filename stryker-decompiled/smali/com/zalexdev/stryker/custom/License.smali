.class public Lcom/zalexdev/stryker/custom/License;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public copyright:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public header:Z

.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;
    .locals 1

    new-instance v0, Lcom/zalexdev/stryker/custom/License;

    invoke-direct {v0}, Lcom/zalexdev/stryker/custom/License;-><init>()V

    iput-object p0, v0, Lcom/zalexdev/stryker/custom/License;->name:Ljava/lang/String;

    iput-object p1, v0, Lcom/zalexdev/stryker/custom/License;->desc:Ljava/lang/String;

    iput-object p2, v0, Lcom/zalexdev/stryker/custom/License;->copyright:Ljava/lang/String;

    iput-object p3, v0, Lcom/zalexdev/stryker/custom/License;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static section(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/License;
    .locals 1

    new-instance v0, Lcom/zalexdev/stryker/custom/License;

    invoke-direct {v0}, Lcom/zalexdev/stryker/custom/License;-><init>()V

    iput-object p0, v0, Lcom/zalexdev/stryker/custom/License;->name:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/zalexdev/stryker/custom/License;->header:Z

    return-object v0
.end method
