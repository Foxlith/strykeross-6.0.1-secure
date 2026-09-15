.class public final Lx1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lx1/a;

.field public static final d:Lx1/a;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lx1/i;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lx1/a;->d:Lx1/a;

    sput-object v1, Lx1/a;->c:Lx1/a;

    goto :goto_0

    :cond_0
    new-instance v0, Lx1/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx1/a;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lx1/a;->d:Lx1/a;

    new-instance v0, Lx1/a;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lx1/a;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lx1/a;->c:Lx1/a;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lx1/a;->a:Z

    iput-object p1, p0, Lx1/a;->b:Ljava/lang/Throwable;

    return-void
.end method
