.class public final Landroidx/recyclerview/widget/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lo/f;


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/q0;

.field public c:Landroidx/recyclerview/widget/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/f;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/f;-><init>(II)V

    sput-object v0, Landroidx/recyclerview/widget/e2;->d:Lo/f;

    return-void
.end method

.method public static a()Landroidx/recyclerview/widget/e2;
    .locals 1

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/e2;->d:Lo/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo/f;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/e2;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/recyclerview/widget/e2;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v0
.end method
