.class public abstract Landroidx/emoji2/text/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/emoji2/text/k;

.field public b:I

.field public final c:Landroidx/emoji2/text/e;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/h;->b:I

    new-instance v0, Landroidx/emoji2/text/e;

    invoke-direct {v0}, Landroidx/emoji2/text/e;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/h;->c:Landroidx/emoji2/text/e;

    iput-object p1, p0, Landroidx/emoji2/text/h;->a:Landroidx/emoji2/text/k;

    return-void
.end method
