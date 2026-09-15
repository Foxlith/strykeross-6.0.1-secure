.class public final Lw5/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lw5/l;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lw5/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/o;->a:Ljava/lang/Object;

    iput-object p2, p0, Lw5/o;->b:Lw5/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw5/o;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lw5/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lw5/o;

    iget-object v0, p1, Lw5/o;->a:Ljava/lang/Object;

    iget-object v2, p0, Lw5/o;->a:Ljava/lang/Object;

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lw5/o;->b:Lw5/l;

    iget-object p1, p1, Lw5/o;->b:Lw5/l;

    invoke-virtual {v0, p1}, Lw5/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lw5/o;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lw5/o;->b:Lw5/l;

    iget-object v1, v1, Lw5/l;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
