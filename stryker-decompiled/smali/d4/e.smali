.class public final synthetic Ld4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/nuclei/InstallNuclei;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/nuclei/InstallNuclei;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ld4/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ld4/e;->b:Lcom/zalexdev/stryker/nuclei/InstallNuclei;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Ld4/e;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld4/e;->b:Lcom/zalexdev/stryker/nuclei/InstallNuclei;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->q:Ljava/util/EnumMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ld4/g;

    .line 29
    .line 30
    sget-object v3, Ld4/f;->a:Ld4/f;

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->d(Ld4/g;Ld4/f;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, v1, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->c:Ll4/l;

    .line 38
    .line 39
    const-string v2, "nuclei"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ll4/l;->O(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    new-instance v2, Lj2/g;

    .line 46
    .line 47
    const/16 v3, 0xe

    .line 48
    .line 49
    invoke-direct {v2, v1, v0, v3}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
