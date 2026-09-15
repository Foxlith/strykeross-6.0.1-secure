.class public final Lcom/stryker/terminal/ui/other/SuUtils$UsbInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/ui/other/SuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UsbInfo"
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final location:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/SuUtils$UsbInfo;->location:Ljava/lang/String;

    iput-object p2, p0, Lcom/stryker/terminal/ui/other/SuUtils$UsbInfo;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/stryker/terminal/ui/other/SuUtils$UsbInfo;->description:Ljava/lang/String;

    return-void
.end method
