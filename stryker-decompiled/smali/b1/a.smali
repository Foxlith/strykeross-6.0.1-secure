.class public final synthetic Lb1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:Lb1/d;


# direct methods
.method public synthetic constructor <init>(Lb1/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/a;->a:Lb1/d;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb1/a;->a:Lb1/d;

    .line 2
    .line 3
    const-string v0, "this$0"

    .line 4
    .line 5
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    :goto_0
    iput-boolean p2, p1, Lb1/d;->f:Z

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 17
    .line 18
    if-ne p2, v0, :cond_1

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    return-void
.end method
