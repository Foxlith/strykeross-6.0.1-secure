.class public final enum Lf3/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lf3/a;

.field public static final enum d:Lf3/a;

.field public static final enum e:Lf3/a;

.field public static final enum f:Lf3/a;

.field public static final enum g:Lf3/a;

.field public static final enum h:Lf3/a;

.field public static final synthetic i:[Lf3/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lf3/a;

    const-string v1, "HID_KEYBOARD"

    const/4 v2, 0x0

    const-string v3, "hid_keyboard"

    const-string v4, "hid.keyboard"

    invoke-direct {v0, v1, v2, v3, v4}, Lf3/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lf3/a;->c:Lf3/a;

    new-instance v1, Lf3/a;

    const-string v2, "HID_MOUSE"

    const/4 v3, 0x1

    const-string v4, "hid_mouse"

    const-string v5, "hid.mouse"

    invoke-direct {v1, v2, v3, v4, v5}, Lf3/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lf3/a;->d:Lf3/a;

    new-instance v2, Lf3/a;

    const-string v3, "MASS_STORAGE"

    const/4 v4, 0x2

    const-string v5, "mass_storage"

    const-string v6, "mass_storage.0"

    invoke-direct {v2, v3, v4, v5, v6}, Lf3/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lf3/a;->e:Lf3/a;

    new-instance v3, Lf3/a;

    const-string v4, "RNDIS"

    const/4 v5, 0x3

    const-string v6, "rndis"

    const-string v7, "rndis.usb0"

    invoke-direct {v3, v4, v5, v6, v7}, Lf3/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lf3/a;->f:Lf3/a;

    new-instance v4, Lf3/a;

    const-string v5, "ECM"

    const/4 v6, 0x4

    const-string v7, "ecm"

    const-string v8, "ecm.usb0"

    invoke-direct {v4, v5, v6, v7, v8}, Lf3/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lf3/a;->g:Lf3/a;

    new-instance v5, Lf3/a;

    const-string v6, "ACM"

    const/4 v7, 0x5

    const-string v8, "acm"

    const-string v9, "acm.0"

    invoke-direct {v5, v6, v7, v8, v9}, Lf3/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lf3/a;->h:Lf3/a;

    new-instance v6, Lf3/a;

    const-string v7, "ADB"

    const/4 v8, 0x6

    const-string v9, "adb"

    const-string v10, "ffs.adb"

    invoke-direct {v6, v7, v8, v9, v10}, Lf3/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    filled-new-array/range {v0 .. v6}, [Lf3/a;

    move-result-object v0

    sput-object v0, Lf3/a;->i:[Lf3/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lf3/a;->a:Ljava/lang/String;

    iput-object p4, p0, Lf3/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf3/a;
    .locals 1

    .line 1
    const-class v0, Lf3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf3/a;

    return-object p0
.end method

.method public static values()[Lf3/a;
    .locals 1

    .line 1
    sget-object v0, Lf3/a;->i:[Lf3/a;

    invoke-virtual {v0}, [Lf3/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf3/a;

    return-object v0
.end method
