.class public final Le0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Le0/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Le0/g;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Le0/h;)V
    .locals 4

    .line 1
    iget v0, p0, Le0/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Le0/i;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Le0/i;->d:Ln/k;

    .line 10
    .line 11
    iget-object v2, p0, Le0/g;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Ljava/lang/String;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, v3}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v3, p0, Le0/g;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ge v0, v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lg0/a;

    .line 48
    .line 49
    invoke-interface {v1, p1}, Lg0/a;->accept(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    :goto_1
    return-void

    .line 56
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1

    .line 58
    :pswitch_0
    if-nez p1, :cond_2

    .line 59
    .line 60
    new-instance p1, Le0/h;

    .line 61
    .line 62
    const/4 v0, -0x3

    .line 63
    invoke-direct {p1, v0}, Le0/h;-><init>(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Le0/g;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Lv1/e;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lv1/e;->g(Le0/h;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Le0/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Le0/h;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Le0/g;->a(Le0/h;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Le0/h;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Le0/g;->a(Le0/h;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
