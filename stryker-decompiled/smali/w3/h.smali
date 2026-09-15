.class public final Lw3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ProgressBar;

.field public final d:Landroid/widget/FrameLayout;

.field public e:Lw3/g;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lw3/g;->a:Lw3/g;

    iput-object v0, p0, Lw3/h;->e:Lw3/g;

    iput-object p1, p0, Lw3/h;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lw3/h;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lw3/h;->c:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lw3/h;->d:Landroid/widget/FrameLayout;

    return-void
.end method
