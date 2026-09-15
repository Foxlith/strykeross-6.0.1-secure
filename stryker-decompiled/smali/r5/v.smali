.class public final Lr5/v;
.super Lr5/e;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr5/v;

    .line 2
    .line 3
    invoke-direct {v0}, Lr5/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final i(La5/j;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p2, Lr5/x;->a:Lr5/f;

    invoke-interface {p1, p2}, La5/j;->get(La5/i;)La5/h;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/a;->A(La5/h;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
