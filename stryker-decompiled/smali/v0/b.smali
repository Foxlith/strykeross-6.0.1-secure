.class public final Lv0/b;
.super Landroidx/lifecycle/s0;
.source "SourceFile"


# static fields
.field public static final e:Landroidx/fragment/app/x0;


# instance fields
.field public final d:Ln/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/app/x0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    sput-object v0, Lv0/b;->e:Landroidx/fragment/app/x0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    new-instance v0, Ln/l;

    invoke-direct {v0}, Ln/l;-><init>()V

    iput-object v0, p0, Lv0/b;->d:Ln/l;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lv0/b;->d:Ln/l;

    .line 2
    .line 3
    iget v1, v0, Ln/l;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-gtz v1, :cond_1

    .line 8
    .line 9
    iget-object v4, v0, Ln/l;->b:[Ljava/lang/Object;

    .line 10
    .line 11
    move v5, v3

    .line 12
    :goto_0
    if-ge v5, v1, :cond_0

    .line 13
    .line 14
    aput-object v2, v4, v5

    .line 15
    .line 16
    add-int/lit8 v5, v5, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput v3, v0, Ln/l;->c:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, v0, Ln/l;->b:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v0, v0, v3

    .line 25
    .line 26
    invoke-static {v0}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    throw v2
.end method
