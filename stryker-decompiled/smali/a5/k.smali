.class public final La5/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/j;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:La5/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La5/k;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La5/k;->a:La5/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lj5/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final get(La5/i;)La5/h;
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final minusKey(La5/i;)La5/j;
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
