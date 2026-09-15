.class public final Le0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Le0/e;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Le0/e;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Le0/f;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Le0/f;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Le0/f;->c:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Le0/f;->d:Le0/e;

    .line 11
    .line 12
    iput p4, p0, Le0/f;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, -0x3

    .line 2
    iget-object v1, p0, Le0/f;->b:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v2, p0, Le0/f;->c:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v3, p0, Le0/f;->d:Le0/e;

    .line 7
    .line 8
    iget v4, p0, Le0/f;->e:I

    .line 9
    .line 10
    iget v5, p0, Le0/f;->a:I

    .line 11
    .line 12
    packed-switch v5, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    packed-switch v5, :pswitch_data_1

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {v1, v2, v3, v4}, Le0/i;->a(Ljava/lang/String;Landroid/content/Context;Le0/e;I)Le0/h;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    new-instance v1, Le0/h;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Le0/h;-><init>(I)V

    .line 26
    .line 27
    .line 28
    move-object v0, v1

    .line 29
    goto :goto_0

    .line 30
    :pswitch_0
    invoke-static {v1, v2, v3, v4}, Le0/i;->a(Ljava/lang/String;Landroid/content/Context;Le0/e;I)Le0/h;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 35
    :pswitch_1
    packed-switch v5, :pswitch_data_2

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-static {v1, v2, v3, v4}, Le0/i;->a(Ljava/lang/String;Landroid/content/Context;Le0/e;I)Le0/h;

    .line 39
    .line 40
    .line 41
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    goto :goto_1

    .line 43
    :catchall_1
    new-instance v1, Le0/h;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Le0/h;-><init>(I)V

    .line 46
    .line 47
    .line 48
    move-object v0, v1

    .line 49
    goto :goto_1

    .line 50
    :pswitch_2
    invoke-static {v1, v2, v3, v4}, Le0/i;->a(Ljava/lang/String;Landroid/content/Context;Le0/e;I)Le0/h;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_1
    return-object v0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
