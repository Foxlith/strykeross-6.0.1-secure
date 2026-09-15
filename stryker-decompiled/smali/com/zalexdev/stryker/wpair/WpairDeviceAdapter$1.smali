.class Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->rebuildVisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zalexdev/stryker/wpair/FastPairDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairDevice;)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getRssi()I

    move-result p2

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getRssi()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    check-cast p2, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$1;->compare(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairDevice;)I

    move-result p1

    return p1
.end method
