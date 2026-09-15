.class public final Lb5/b;
.super Lc5/g;
.source "SourceFile"


# instance fields
.field public a:I

.field public final synthetic b:Lj5/p;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp5/h;Lp5/h;Lj5/p;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lb5/b;->b:Lj5/p;

    iput-object p1, p0, Lb5/b;->c:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lc5/g;-><init>(La5/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lb5/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    iput v1, p0, Lb5/b;->a:I

    .line 10
    .line 11
    invoke-static {p1}, Lv1/f;->W(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "This coroutine had already completed"

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iput v2, p0, Lb5/b;->a:I

    .line 28
    .line 29
    invoke-static {p1}, Lv1/f;->W(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lb5/b;->b:Lj5/p;

    .line 33
    .line 34
    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>"

    .line 35
    .line 36
    invoke-static {p1, v0}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1, p1}, Li5/a;->k0(ILjava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lb5/b;->c:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-interface {p1, v0, p0}, Lj5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_0
    return-object p1

    .line 52
    :cond_2
    const-string v0, "kotlin.jvm.functions.Function2"

    .line 53
    .line 54
    invoke-static {p1, v0}, Li5/a;->f1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    throw p1
.end method
