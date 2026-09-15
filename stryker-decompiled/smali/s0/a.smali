.class public abstract Ls0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const v0, 0x1010003

    const v1, 0x10100d0

    const v2, 0x10100d1

    filled-new-array {v0, v1, v2}, [I

    move-result-object v1

    sput-object v1, Ls0/a;->a:[I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sput-object v0, Ls0/a;->b:[I

    return-void
.end method
