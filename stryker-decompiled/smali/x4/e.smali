.class public final Lx4/e;
.super Lx4/f;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final a:Lx4/f;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lx4/f;II)V
    .locals 1

    .line 1
    const-string v0, "list"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lx4/f;-><init>()V

    iput-object p1, p0, Lx4/e;->a:Lx4/f;

    iput p2, p0, Lx4/e;->b:I

    sget-object v0, Lx4/f;->Companion:Lx4/c;

    invoke-virtual {p1}, Lx4/b;->size()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3, p1}, Lx4/c;->c(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lx4/e;->c:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lx4/f;->Companion:Lx4/c;

    iget v1, p0, Lx4/e;->c:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lx4/c;->a(II)V

    iget v0, p0, Lx4/e;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lx4/e;->a:Lx4/f;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lx4/e;->c:I

    return v0
.end method
