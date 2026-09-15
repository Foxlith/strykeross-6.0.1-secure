.class public final Lq2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ProgressBar;

.field public final d:Landroid/widget/FrameLayout;

.field public e:Lq2/c;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lq2/c;->a:Lq2/c;

    iput-object v0, p0, Lq2/d;->e:Lq2/c;

    iput-object p1, p0, Lq2/d;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lq2/d;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lq2/d;->c:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lq2/d;->d:Landroid/widget/FrameLayout;

    return-void
.end method
