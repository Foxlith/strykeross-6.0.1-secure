.class public final Landroidx/fragment/app/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/fragment/app/Fragment;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroidx/lifecycle/n;

.field public h:Landroidx/lifecycle/n;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/fragment/app/d1;->a:I

    iput-object p1, p0, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    sget-object p1, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    iput-object p1, p0, Landroidx/fragment/app/d1;->g:Landroidx/lifecycle/n;

    iput-object p1, p0, Landroidx/fragment/app/d1;->h:Landroidx/lifecycle/n;

    return-void
.end method
