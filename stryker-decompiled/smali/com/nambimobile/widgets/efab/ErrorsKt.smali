.class public final Lcom/nambimobile/widgets/efab/ErrorsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic illegalArg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 1

    const-string v0, "message"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic illegalArg$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic illegalState(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 1

    const-string v0, "message"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic illegalState$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalState(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
