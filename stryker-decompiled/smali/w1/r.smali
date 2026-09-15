.class public final Lw1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw1/r;

.field public static final b:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw1/r;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lw1/r;->a:Lw1/r;

    .line 7
    .line 8
    new-instance v0, Ljava/util/WeakHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lw1/r;->b:Ljava/util/WeakHashMap;

    .line 14
    .line 15
    return-void
.end method
