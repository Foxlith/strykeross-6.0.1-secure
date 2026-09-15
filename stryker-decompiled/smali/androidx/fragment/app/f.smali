.class public final Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/s1;

.field public final synthetic b:Landroidx/fragment/app/s1;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/s1;Landroidx/fragment/app/s1;ZLn/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/s1;

    iput-object p2, p0, Landroidx/fragment/app/f;->b:Landroidx/fragment/app/s1;

    iput-boolean p3, p0, Landroidx/fragment/app/f;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/s1;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/f;->b:Landroidx/fragment/app/s1;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    iget-boolean v2, p0, Landroidx/fragment/app/f;->c:Z

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/g1;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
