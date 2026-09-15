.class public final Lx1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lx1/h;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lx1/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx1/h;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx1/h;->c:Lx1/h;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lx1/i;->f:Lg/a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lg/a;->y(Lx1/h;Ljava/lang/Thread;)V

    return-void
.end method
