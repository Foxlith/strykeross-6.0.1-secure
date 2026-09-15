.class public Lcom/zalexdev/stryker/custom/WiFINetwork$WiFIComporator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/custom/WiFINetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WiFIComporator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zalexdev/stryker/custom/WiFINetwork;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zalexdev/stryker/custom/WiFINetwork;Lcom/zalexdev/stryker/custom/WiFINetwork;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPower()I

    move-result p1

    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPower()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/zalexdev/stryker/custom/WiFINetwork;

    check-cast p2, Lcom/zalexdev/stryker/custom/WiFINetwork;

    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/custom/WiFINetwork$WiFIComporator;->compare(Lcom/zalexdev/stryker/custom/WiFINetwork;Lcom/zalexdev/stryker/custom/WiFINetwork;)I

    move-result p1

    return p1
.end method
