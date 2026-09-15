.class public final La1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La1/c;->a:I

    iput p4, p0, La1/c;->b:I

    iput-object p1, p0, La1/c;->c:Ljava/lang/String;

    iput-object p3, p0, La1/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, La1/c;

    .line 2
    .line 3
    const-string v0, "other"

    .line 4
    .line 5
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, La1/c;->a:I

    .line 9
    .line 10
    iget v1, p1, La1/c;->a:I

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, La1/c;->b:I

    .line 16
    .line 17
    iget p1, p1, La1/c;->b:I

    .line 18
    .line 19
    sub-int/2addr v0, p1

    .line 20
    :cond_0
    return v0
.end method
