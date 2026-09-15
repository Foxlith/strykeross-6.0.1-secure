.class public final Lu2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu2/a;->a:Ljava/lang/String;

    iput p2, p0, Lu2/a;->b:I

    iput-boolean p3, p0, Lu2/a;->c:Z

    return-void
.end method

.method public static a(Ll4/l;ZZ)Lu2/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f060315

    .line 9
    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object p0, p0, Ll4/l;->c:Landroid/content/Context;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-static {p0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lu2/h;->A()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lu2/h;->z()I

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move p0, p1

    .line 37
    :goto_0
    invoke-static {p0}, Lo/i;->c(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const/4 p2, 0x0

    .line 42
    if-eq p0, p1, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    if-eq p0, v0, :cond_1

    .line 46
    .line 47
    new-instance p0, Lu2/a;

    .line 48
    .line 49
    const-string p1, "VM stopped"

    .line 50
    .line 51
    invoke-direct {p0, p1, v1, p2}, Lu2/a;-><init>(Ljava/lang/String;IZ)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_1
    new-instance p0, Lu2/a;

    .line 56
    .line 57
    const-string p2, "VM ready"

    .line 58
    .line 59
    const v0, 0x7f060025

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p2, v0, p1}, Lu2/a;-><init>(Ljava/lang/String;IZ)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_2
    new-instance p0, Lu2/a;

    .line 67
    .line 68
    const-string p1, "VM booting\u2026"

    .line 69
    .line 70
    const v0, 0x7f060314

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1, v0, p2}, Lu2/a;-><init>(Ljava/lang/String;IZ)V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_3
    new-instance p0, Lu2/a;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    const-string p2, "Chroot mounted"

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const-string p2, "Chroot detached"

    .line 85
    .line 86
    :goto_1
    if-eqz p1, :cond_5

    .line 87
    .line 88
    const v1, 0x7f060019

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-direct {p0, p2, v1, p1}, Lu2/a;-><init>(Ljava/lang/String;IZ)V

    .line 92
    .line 93
    .line 94
    return-object p0
.end method
