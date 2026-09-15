.class public final Lw5/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final b:[Lw5/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lw5/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x4

    new-array v0, v0, [Lw5/m;

    sput-object v0, Lw5/n;->b:[Lw5/m;

    return-void
.end method
