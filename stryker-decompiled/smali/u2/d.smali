.class public final enum Lu2/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lu2/d;

.field public static final enum c:Lu2/d;

.field public static final enum d:Lu2/d;

.field public static final enum e:Lu2/d;

.field public static final enum f:Lu2/d;

.field public static final enum g:Lu2/d;

.field public static final enum h:Lu2/d;

.field public static final synthetic i:[Lu2/d;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lu2/d;

    const/4 v1, 0x0

    const-string v2, "Preparing"

    const-string v3, "PREPARING"

    invoke-direct {v0, v3, v1, v2}, Lu2/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lu2/d;->b:Lu2/d;

    new-instance v1, Lu2/d;

    const/4 v2, 0x1

    const-string v3, "Extracting QEMU"

    const-string v4, "EXTRACTING_QEMU"

    invoke-direct {v1, v4, v2, v3}, Lu2/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lu2/d;->c:Lu2/d;

    new-instance v2, Lu2/d;

    const/4 v3, 0x2

    const-string v4, "Extracting kernel"

    const-string v5, "EXTRACTING_KERNEL"

    invoke-direct {v2, v5, v3, v4}, Lu2/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lu2/d;->d:Lu2/d;

    new-instance v3, Lu2/d;

    const/4 v4, 0x3

    const-string v5, "Extracting libraries"

    const-string v6, "EXTRACTING_LIBS"

    invoke-direct {v3, v6, v4, v5}, Lu2/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lu2/d;->e:Lu2/d;

    new-instance v4, Lu2/d;

    const/4 v5, 0x4

    const-string v6, "Decompressing rootfs"

    const-string v7, "DECOMPRESSING_ROOTFS"

    invoke-direct {v4, v7, v5, v6}, Lu2/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lu2/d;->f:Lu2/d;

    new-instance v5, Lu2/d;

    const/4 v6, 0x5

    const-string v7, "Finalizing"

    const-string v8, "FINALIZING"

    invoke-direct {v5, v8, v6, v7}, Lu2/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lu2/d;->g:Lu2/d;

    new-instance v6, Lu2/d;

    const/4 v7, 0x6

    const-string v8, "Done"

    const-string v9, "DONE"

    invoke-direct {v6, v9, v7, v8}, Lu2/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lu2/d;->h:Lu2/d;

    filled-new-array/range {v0 .. v6}, [Lu2/d;

    move-result-object v0

    sput-object v0, Lu2/d;->i:[Lu2/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lu2/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu2/d;
    .locals 1

    .line 1
    const-class v0, Lu2/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu2/d;

    return-object p0
.end method

.method public static values()[Lu2/d;
    .locals 1

    .line 1
    sget-object v0, Lu2/d;->i:[Lu2/d;

    invoke-virtual {v0}, [Lu2/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu2/d;

    return-object v0
.end method
