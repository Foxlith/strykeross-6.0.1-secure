.class public final Lo4/d0;
.super Ljava/util/TimerTask;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:[Ll4/c;

.field public final synthetic d:[Ljava/util/Timer;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Lcom/zalexdev/stryker/wifi/Wifi;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;[ILandroid/widget/TextView;[Ll4/c;[Ljava/util/Timer;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/d0;->f:Lcom/zalexdev/stryker/wifi/Wifi;

    iput-object p2, p0, Lo4/d0;->a:[I

    iput-object p3, p0, Lo4/d0;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lo4/d0;->c:[Ll4/c;

    iput-object p5, p0, Lo4/d0;->d:[Ljava/util/Timer;

    iput-object p6, p0, Lo4/d0;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo4/d0;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    add-int/lit8 v2, v2, -0x1

    .line 7
    .line 8
    aput v2, v0, v1

    .line 9
    .line 10
    new-instance v2, Ld4/d;

    .line 11
    .line 12
    const/16 v3, 0xd

    .line 13
    .line 14
    iget-object v4, p0, Lo4/d0;->b:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-direct {v2, v4, v0, v3}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    sget v3, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 20
    .line 21
    iget-object v3, p0, Lo4/d0;->f:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    aget v0, v0, v1

    .line 27
    .line 28
    if-gtz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lo4/d0;->c:[Ll4/c;

    .line 31
    .line 32
    aget-object v0, v0, v1

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo4/d0;->d:[Ljava/util/Timer;

    .line 40
    .line 41
    aget-object v0, v0, v1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_0
    new-instance v0, Lo4/k;

    .line 52
    .line 53
    const/4 v1, 0x5

    .line 54
    iget-object v2, p0, Lo4/d0;->e:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-direct {v0, v2, v1}, Lo4/k;-><init>(Landroid/widget/TextView;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method
