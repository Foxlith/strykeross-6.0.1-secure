.class public final Landroidx/lifecycle/l0;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/l;


# static fields
.field public static final a:Landroidx/lifecycle/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/l0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/lifecycle/l0;->a:Landroidx/lifecycle/l0;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lu0/b;

    .line 2
    .line 3
    const-string v0, "$this$initializer"

    .line 4
    .line 5
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/lifecycle/o0;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/lifecycle/o0;-><init>()V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method
