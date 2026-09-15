.class public final Lcom/stryker/terminal/ui/other/SuUtils$Iface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/ui/other/SuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iface"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/SuUtils$Iface;->name:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/stryker/terminal/ui/other/SuUtils$Iface;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isMonitor()Z
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/SuUtils$Iface;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "monitor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
