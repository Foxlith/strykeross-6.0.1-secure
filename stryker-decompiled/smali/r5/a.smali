.class public final Lr5/a;
.super Lr5/p;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr5/p;-><init>()V

    iput-object p1, p0, Lr5/a;->f:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final u()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Lr5/a;->f:Ljava/lang/Thread;

    return-object v0
.end method
