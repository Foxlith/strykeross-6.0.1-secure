.class public final synthetic Lcom/google/android/material/color/utilities/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/material/color/utilities/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/material/color/utilities/h;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/h;->a:I

    iget-object v1, p0, Lcom/google/android/material/color/utilities/h;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->b(Lorg/apache/commons/net/ftp/FTPListParseEngine;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast v1, [Linet/ipaddr/mac/MACAddressSegment;

    check-cast p1, Linet/ipaddr/Address;

    invoke-static {v1, p1}, Linet/ipaddr/mac/MACAddress;->f([Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast v1, [B

    check-cast p1, Linet/ipaddr/Address;

    invoke-static {v1, p1}, Linet/ipaddr/mac/MACAddress;->d([BLinet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast v1, Lcom/google/android/material/color/utilities/TemperatureCache;

    check-cast p1, Lcom/google/android/material/color/utilities/Hct;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/TemperatureCache;->a(Lcom/google/android/material/color/utilities/TemperatureCache;Lcom/google/android/material/color/utilities/Hct;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast v1, Lcom/google/android/material/color/utilities/Hct;

    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->d(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast v1, Lcom/google/android/material/color/utilities/TonalPalette;

    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->b(Lcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast v1, Lcom/google/android/material/color/utilities/DynamicColor;

    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->c(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
