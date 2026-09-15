.class public final Ld4/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/m;->a:Ljava/lang/String;

    iput-object p2, p0, Ld4/m;->b:Ljava/lang/String;

    iput-object p3, p0, Ld4/m;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ld4/m;
    .locals 6

    .line 1
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "OUT"

    const-string v2, ""

    if-gez v0, :cond_0

    new-instance v0, Ld4/m;

    invoke-direct {v0, v2, v1, p0}, Ld4/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/16 v5, 0x5d

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v4, :cond_3

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v5, v1, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance p0, Ld4/m;

    invoke-direct {p0, v3, v0, v2}, Ld4/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    :goto_0
    new-instance v2, Ld4/m;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, v1, p0}, Ld4/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
