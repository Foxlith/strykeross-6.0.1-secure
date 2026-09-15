.class public final Lf0/i;
.super Lf0/h;
.source "SourceFile"


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lf0/f;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf0/h;-><init>(Ljava/lang/Object;)V

    iput-boolean p2, p0, Lf0/i;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf0/i;->b:Z

    return v0
.end method
