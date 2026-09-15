.class public final enum Ln2/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Ln2/a;

.field public static final enum c:Ln2/a;

.field public static final enum d:Ln2/a;

.field public static final enum e:Ln2/a;

.field public static final enum f:Ln2/a;

.field public static final enum g:Ln2/a;

.field public static final enum h:Ln2/a;

.field public static final enum i:Ln2/a;

.field public static final synthetic j:[Ln2/a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ln2/a;

    const/4 v1, 0x0

    const-string v2, "Preparing storage layout"

    const-string v3, "PREPARING"

    invoke-direct {v0, v3, v1, v2}, Ln2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ln2/a;->b:Ln2/a;

    new-instance v1, Ln2/a;

    const/4 v2, 0x1

    const-string v3, "Downloading chroot"

    const-string v4, "DOWNLOADING"

    invoke-direct {v1, v4, v2, v3}, Ln2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ln2/a;->c:Ln2/a;

    new-instance v2, Ln2/a;

    const/4 v3, 0x2

    const-string v4, "Unpacking chroot"

    const-string v5, "UNPACKING"

    invoke-direct {v2, v5, v3, v4}, Ln2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Ln2/a;->d:Ln2/a;

    new-instance v3, Ln2/a;

    const/4 v4, 0x3

    const-string v5, "Mounting chroot"

    const-string v6, "MOUNTING"

    invoke-direct {v3, v6, v4, v5}, Ln2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Ln2/a;->e:Ln2/a;

    new-instance v4, Ln2/a;

    const/4 v5, 0x4

    const-string v6, "Refreshing the package index"

    const-string v7, "UPGRADING"

    invoke-direct {v4, v7, v5, v6}, Ln2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Ln2/a;->f:Ln2/a;

    new-instance v5, Ln2/a;

    const/4 v6, 0x5

    const-string v7, "Copying built-in exploits"

    const-string v8, "DEPLOYING_EXPLOITS"

    invoke-direct {v5, v8, v6, v7}, Ln2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Ln2/a;->g:Ln2/a;

    new-instance v6, Ln2/a;

    const/4 v7, 0x6

    const-string v8, "Writing version marker"

    const-string v9, "FINALIZING"

    invoke-direct {v6, v9, v7, v8}, Ln2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Ln2/a;->h:Ln2/a;

    new-instance v7, Ln2/a;

    const/4 v8, 0x7

    const-string v9, "Installation complete"

    const-string v10, "DONE"

    invoke-direct {v7, v10, v8, v9}, Ln2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Ln2/a;->i:Ln2/a;

    filled-new-array/range {v0 .. v7}, [Ln2/a;

    move-result-object v0

    sput-object v0, Ln2/a;->j:[Ln2/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ln2/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln2/a;
    .locals 1

    .line 1
    const-class v0, Ln2/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln2/a;

    return-object p0
.end method

.method public static values()[Ln2/a;
    .locals 1

    .line 1
    sget-object v0, Ln2/a;->j:[Ln2/a;

    invoke-virtual {v0}, [Ln2/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln2/a;

    return-object v0
.end method
