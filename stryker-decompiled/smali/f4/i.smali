.class public final Lf4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lf4/i;->a:Z

    iput-object p2, p0, Lf4/i;->b:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lf4/i;->a:Z

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lf4/i;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lf4/i;->a:Z

    iput-object p1, p0, Lf4/i;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lf4/i;
    .locals 2

    .line 1
    new-instance v0, Lf4/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf4/i;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
