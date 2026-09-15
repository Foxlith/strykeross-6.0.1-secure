.class public final Lcom/stryker/terminal/ui/other/WirelessDialogs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/stryker/terminal/ui/other/WirelessDialogs;

.field public static final OP_TIMEOUT_MS:J = 0x61a8L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/ui/other/WirelessDialogs;

    invoke-direct {v0}, Lcom/stryker/terminal/ui/other/WirelessDialogs;-><init>()V

    sput-object v0, Lcom/stryker/terminal/ui/other/WirelessDialogs;->INSTANCE:Lcom/stryker/terminal/ui/other/WirelessDialogs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final showInterfaces(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stryker/terminal/ui/other/InterfacesDialog;

    invoke-direct {v0, p1}, Lcom/stryker/terminal/ui/other/InterfacesDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->show()V

    return-void
.end method

.method public final showUsbDevices(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stryker/terminal/ui/other/UsbDialog;

    invoke-direct {v0, p1}, Lcom/stryker/terminal/ui/other/UsbDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/stryker/terminal/ui/other/UsbDialog;->show()V

    return-void
.end method
