.class public final synthetic Lj2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/MainActivity;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/MainActivity;[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/f;->a:Lcom/zalexdev/stryker/MainActivity;

    iput-object p2, p0, Lj2/f;->b:[Ljava/lang/String;

    iput-boolean p3, p0, Lj2/f;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    sget-object p1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object p1, p0, Lj2/f;->a:Lcom/zalexdev/stryker/MainActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lj2/f;->b:[Ljava/lang/String;

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    iget-boolean v2, p0, Lj2/f;->c:Z

    .line 14
    .line 15
    if-eq p2, v1, :cond_1

    .line 16
    .line 17
    iget-object p1, p1, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const-string v1, "wlan_scan"

    .line 22
    .line 23
    aget-object p2, v0, p2

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p1, v1, p2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-string v1, "wlan_deauth"

    .line 30
    .line 31
    aget-object p2, v0, p2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p2, Ljava/lang/Thread;

    .line 35
    .line 36
    new-instance v0, Lj2/g;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {v0, p1, v2, v1}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method
