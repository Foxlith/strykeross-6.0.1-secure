.class public abstract Ll4/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static m:Ljava/lang/Process;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Ljava/io/InputStream;

.field public final c:Ljava/io/InputStream;

.field public final d:Ljava/io/OutputStream;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/util/ArrayList;

.field public final i:Lu3/g;

.field public final j:Ll4/l;

.field public final k:Z

.field public l:Lu2/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ll4/o;->h:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Ll4/o;->a:Landroid/app/Activity;

    .line 12
    .line 13
    new-instance v0, Ll4/l;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Ll4/o;->j:Ll4/l;

    .line 19
    .line 20
    iput-object p2, p0, Ll4/o;->e:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p2}, Lu3/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Ll4/o;->f:Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean p3, p0, Ll4/o;->g:Z

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    const/4 p2, 0x1

    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_0

    .line 39
    .line 40
    move p3, p2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move p3, p1

    .line 43
    :goto_0
    iput-boolean p3, p0, Ll4/o;->k:Z

    .line 44
    .line 45
    if-nez p3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Ll4/l;->w()Ljava/lang/Process;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Ll4/o;->m:Ljava/lang/Process;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Ll4/o;->b:Ljava/io/InputStream;

    .line 58
    .line 59
    sget-object v0, Ll4/o;->m:Ljava/lang/Process;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Ll4/o;->c:Ljava/io/InputStream;

    .line 66
    .line 67
    sget-object v0, Ll4/o;->m:Ljava/lang/Process;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Ll4/o;->d:Ljava/io/OutputStream;

    .line 74
    .line 75
    :cond_1
    new-instance v0, Lu3/g;

    .line 76
    .line 77
    invoke-direct {v0}, Lu3/g;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Ll4/o;->i:Lu3/g;

    .line 81
    .line 82
    if-eqz p3, :cond_2

    .line 83
    .line 84
    new-instance p1, Ljava/lang/Thread;

    .line 85
    .line 86
    new-instance p3, Ll4/n;

    .line 87
    .line 88
    invoke-direct {p3, p0, p2}, Ll4/n;-><init>(Ll4/o;I)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    new-instance p2, Ljava/lang/Thread;

    .line 99
    .line 100
    new-instance p3, Ll4/n;

    .line 101
    .line 102
    invoke-direct {p3, p0, p1}, Ll4/n;-><init>(Ll4/o;I)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/ArrayList;)V
.end method
