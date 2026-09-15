.class public final Lu2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/hardware/usb/UsbDeviceConnection;

.field public final b:Landroid/os/ParcelFileDescriptor;

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/os/ParcelFileDescriptor;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu2/k;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p2, p0, Lu2/k;->b:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Lu2/k;->c:I

    iput-object p4, p0, Lu2/k;->d:Ljava/lang/String;

    return-void
.end method
