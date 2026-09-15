.class final enum Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/MACAddressParseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MACFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

.field public static final enum COLON_DELIMITED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

.field public static final enum DASHED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

.field public static final enum DOTTED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

.field public static final enum SPACE_DELIMITED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;


# instance fields
.field private separator:C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    const/4 v1, 0x0

    const/16 v2, 0x2d

    const-string v3, "DASHED"

    invoke-direct {v0, v3, v1, v2}, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DASHED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    new-instance v1, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    const/4 v2, 0x1

    const/16 v3, 0x3a

    const-string v4, "COLON_DELIMITED"

    invoke-direct {v1, v4, v2, v3}, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->COLON_DELIMITED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    new-instance v2, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    const/4 v3, 0x2

    const/16 v4, 0x2e

    const-string v5, "DOTTED"

    invoke-direct {v2, v5, v3, v4}, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v2, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DOTTED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    new-instance v3, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    const/4 v4, 0x3

    const/16 v5, 0x20

    const-string v6, "SPACE_DELIMITED"

    invoke-direct {v3, v6, v4, v5}, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v3, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->SPACE_DELIMITED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    filled-new-array {v0, v1, v2, v3}, [Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->$VALUES:[Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->separator:C

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;
    .locals 1

    const-class v0, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    return-object p0
.end method

.method public static values()[Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;
    .locals 1

    sget-object v0, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->$VALUES:[Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    invoke-virtual {v0}, [Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    return-object v0
.end method


# virtual methods
.method public getSeparator()C
    .locals 1

    iget-char v0, p0, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->separator:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mac format:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsegment separator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->separator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
