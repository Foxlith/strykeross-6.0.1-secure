.class public final Lq4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lq4/a;

.field public d:I


# direct methods
.method public constructor <init>(IILq4/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lq4/b;->d:I

    iput p1, p0, Lq4/b;->a:I

    iput p2, p0, Lq4/b;->b:I

    iput-object p3, p0, Lq4/b;->c:Lq4/a;

    return-void
.end method
