.class public final Lr5/d;
.super La5/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    sget-object p1, La5/f;->a:La5/f;

    .line 5
    .line 6
    sget-object v0, Lr5/c;->b:Lr5/c;

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, La5/b;-><init>(La5/i;Lr5/c;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object p1, Lr5/e;->a:Lr5/d;

    .line 13
    .line 14
    sget-object v0, Lr5/c;->c:Lr5/c;

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, La5/b;-><init>(La5/i;Lr5/c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
