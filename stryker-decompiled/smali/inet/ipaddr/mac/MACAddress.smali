.class public Linet/ipaddr/mac/MACAddress;
.super Linet/ipaddr/Address;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/Address;",
        "Ljava/lang/Iterable<",
        "Linet/ipaddr/mac/MACAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final BITS_PER_SEGMENT:I = 0x8

.field public static final BYTES_PER_SEGMENT:I = 0x1

.field public static final COLON_SEGMENT_SEPARATOR:C = ':'

.field public static final DASHED_SEGMENT_RANGE_SEPARATOR:C = '|'

.field public static final DASHED_SEGMENT_RANGE_SEPARATOR_STR:Ljava/lang/String;

.field public static final DASH_SEGMENT_SEPARATOR:C = '-'

.field public static final DEFAULT_TEXTUAL_RADIX:I = 0x10

.field public static final DOTTED_SEGMENT_SEPARATOR:C = '.'

.field public static final EXTENDED_UNIQUE_IDENTIFIER_48_BIT_COUNT:I = 0x30

.field public static final EXTENDED_UNIQUE_IDENTIFIER_48_SEGMENT_COUNT:I = 0x6

.field public static final EXTENDED_UNIQUE_IDENTIFIER_64_BIT_COUNT:I = 0x40

.field public static final EXTENDED_UNIQUE_IDENTIFIER_64_SEGMENT_COUNT:I = 0x8

.field public static final MAX_VALUE_PER_DOTTED_SEGMENT:I = 0xffff

.field public static final MAX_VALUE_PER_SEGMENT:I = 0xff

.field public static final MEDIA_ACCESS_CONTROL_BIT_COUNT:I = 0x30

.field public static final MEDIA_ACCESS_CONTROL_DOTTED_64_SEGMENT_COUNT:I = 0x4

.field public static final MEDIA_ACCESS_CONTROL_DOTTED_BITS_PER_SEGMENT:I = 0x10

.field public static final MEDIA_ACCESS_CONTROL_DOTTED_SEGMENT_COUNT:I = 0x3

.field public static final MEDIA_ACCESS_CONTROL_SEGMENT_COUNT:I = 0x6

.field public static final MEDIA_ACCESS_CONTROL_SINGLE_DASHED_SEGMENT_COUNT:I = 0x2

.field public static final ORGANIZATIONAL_UNIQUE_IDENTIFIER_BIT_COUNT:I = 0x18

.field public static final ORGANIZATIONAL_UNIQUE_IDENTIFIER_SEGMENT_COUNT:I = 0x3

.field public static final SPACE_SEGMENT_SEPARATOR:C = ' '

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field transient sectionCache:Linet/ipaddr/mac/MACAddressSection$MACAddressCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linet/ipaddr/mac/MACAddress;->DASHED_SEGMENT_RANGE_SEPARATOR_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/mac/MACAddress;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1

    .line 2
    new-instance v0, Linet/ipaddr/mac/b;

    invoke-direct {v0, p1, p2, p3}, Linet/ipaddr/mac/b;-><init>(JZ)V

    invoke-direct {p0, v0}, Linet/ipaddr/Address;-><init>(Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/mac/MACAddress;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Z)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/mac/MACAddress;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Z)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Z)V
    .locals 1

    .line 5
    new-instance v0, Linet/ipaddr/mac/a;

    invoke-direct {v0, p1, p2, p3}, Linet/ipaddr/mac/a;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Z)V

    invoke-direct {p0, v0}, Linet/ipaddr/Address;-><init>(Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p1, p2}, Linet/ipaddr/mac/MACAddress;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Z)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/mac/MACAddressSection;)V
    .locals 4

    .line 7
    invoke-direct {p0, p1}, Linet/ipaddr/Address;-><init>(Linet/ipaddr/AddressSection;)V

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Linet/ipaddr/AddressValueException;

    const-string v1, "ipaddress.error.mac.invalid.segment.count"

    int-to-long v2, v0

    invoke-direct {p1, v1, v2, v3}, Linet/ipaddr/AddressValueException;-><init>(Ljava/lang/String;J)V

    throw p1

    :cond_1
    :goto_0
    iget v0, p1, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Linet/ipaddr/AddressPositionException;

    iget p1, p1, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    invoke-direct {v0, p1}, Linet/ipaddr/AddressPositionException;-><init>(I)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/NetworkInterface;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 9
    new-instance v0, Lcom/google/android/material/color/utilities/h;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/color/utilities/h;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Linet/ipaddr/Address;-><init>(Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/mac/MACAddressSegment;)V
    .locals 4

    .line 10
    new-instance v0, Lcom/google/android/material/color/utilities/h;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/color/utilities/h;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Linet/ipaddr/Address;-><init>(Ljava/util/function/Function;)V

    array-length p1, p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Linet/ipaddr/AddressValueException;

    const-string v1, "ipaddress.error.mac.invalid.segment.count"

    int-to-long v2, p1

    invoke-direct {v0, v1, v2, v3}, Linet/ipaddr/AddressValueException;-><init>(Ljava/lang/String;J)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ZLinet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/mac/MACAddress;->lambda$new$3(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ZLinet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddress(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method private static createSection(Linet/ipaddr/mac/MACAddress;[B)Linet/ipaddr/mac/MACAddressSection;
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    const/4 v3, 0x6

    if-le v0, v3, :cond_3

    move v4, v1

    :goto_0
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gt v0, v3, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    :goto_1
    move v3, v2

    :cond_3
    :goto_2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object p0

    if-ne v3, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {p0, p1, v1, v3, v0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSection([BIIZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d([BLinet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/mac/MACAddress;->lambda$new$2([BLinet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(JZLinet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/mac/MACAddress;->lambda$new$1(JZLinet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f([Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/mac/MACAddress;->lambda$new$0([Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private getLowestOrHighest(Z)Linet/ipaddr/mac/MACAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Linet/ipaddr/mac/MACAddressSection;->getLowestOrHighest(Linet/ipaddr/mac/MACAddress;Z)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public static getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/Address;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0([Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 2

    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object p1

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p0, v0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSection([Linet/ipaddr/mac/MACAddressSegment;Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$1(JZLinet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 1

    check-cast p3, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p3}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p0, p1, v0, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSection(JIZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$2([BLinet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-static {p1, p0}, Linet/ipaddr/mac/MACAddress;->createSection(Linet/ipaddr/mac/MACAddress;[B)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$3(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ZLinet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 1

    check-cast p3, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p3}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p0, p1, v0, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSection(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static maxSegmentValue()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method


# virtual methods
.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->adjustPrefixBySegment(Z)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/Address;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddress;->adjustPrefixBySegment(ZZ)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->adjustPrefixBySegment(Z)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddress;->adjustPrefixBySegment(ZZ)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixBySegment(Z)Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixBySegment(ZZ)Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->adjustPrefixLength(I)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/Address;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddress;->adjustPrefixLength(IZ)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->adjustPrefixLength(I)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddress;->adjustPrefixLength(IZ)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(I)Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixLength(I)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(IZ)Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/Address;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->applyPrefixLength(I)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->applyPrefixLength(I)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public applyPrefixLength(I)Linet/ipaddr/mac/MACAddress;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSection;->applyPrefixLength(I)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public cache(Linet/ipaddr/HostIdentifierString;)V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    instance-of v0, v0, Linet/ipaddr/MACAddressString;

    if-eqz v0, :cond_0

    iput-object p1, p0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    :cond_0
    return-void
.end method

.method public getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public getBitCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getBitCount()I

    move-result v0

    return v0
.end method

.method public getBitsPerSegment()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getByteCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getByteCount()I

    move-result v0

    return v0
.end method

.method public getBytesPerSegment()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->getDivision(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->getDivision(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getDivision(I)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getDottedAddress()Linet/ipaddr/format/standard/AddressDivisionGrouping;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getDottedGrouping()Linet/ipaddr/format/standard/AddressDivisionGrouping;

    move-result-object v0

    return-object v0
.end method

.method public getIPv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;
    .locals 1

    invoke-static {}, Linet/ipaddr/Address;->defaultIpv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getIterable()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getLower()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getLower()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getLower()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLower()Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddress;->getLowestOrHighest(Z)Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSegmentValue()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/mac/MACAddressNetwork;
    .locals 1

    .line 2
    invoke-static {}, Linet/ipaddr/Address;->defaultMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getODISection()Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getODISection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getOUISection()Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getOUISection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->getSection(I)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddress;->getSection(II)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection()Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    return-object v0
.end method

.method public getSection(I)Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSection;->getSection(I)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection(II)Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->getSection(II)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getSegment(I)Linet/ipaddr/mac/MACAddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/AddressSegment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSegments()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getSegments()[Linet/ipaddr/mac/MACAddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getSegments()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getUpper()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getUpper()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getUpper()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public getUpper()Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddress;->getLowestOrHighest(Z)Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddress;->increment(J)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddress;->increment(J)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public increment(J)Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->increment(J)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddress;->incrementBoundary(J)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddress;->incrementBoundary(J)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public incrementBoundary(J)Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->incrementBoundary(J)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public isAllAddresses()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isFullRange()Z

    move-result v0

    return v0
.end method

.method public isEUI64(Z)Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->isExtended()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xfe

    :goto_0
    invoke-virtual {v0, v3}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isExtended()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result v0

    return v0
.end method

.method public isFromSameString(Linet/ipaddr/HostIdentifierString;)Z
    .locals 4

    iget-object v0, p0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v2, p1, Linet/ipaddr/MACAddressString;

    if-eqz v2, :cond_1

    check-cast v0, Linet/ipaddr/MACAddressString;

    check-cast p1, Linet/ipaddr/MACAddressString;

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/MACAddressString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/MACAddressString;->getValidationOptions()Linet/ipaddr/MACAddressStringParameters;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->getValidationOptions()Linet/ipaddr/MACAddressStringParameters;

    move-result-object p1

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isLocal()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddress;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Linet/ipaddr/mac/MACAddressSegment;->matchesWithMask(II)Z

    move-result v0

    return v0
.end method

.method public isMulticast()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddress;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Linet/ipaddr/mac/MACAddressSegment;->matchesWithMask(II)Z

    move-result v0

    return v0
.end method

.method public isUnicast()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->isMulticast()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUniversal()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->isLocal()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Linet/ipaddr/mac/MACAddressSection;->iterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public prefixBlockIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/mac/MACAddressSection;->prefixIterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/mac/MACAddressSection;->prefixSpliterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public prefixIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/mac/MACAddressSection;->prefixIterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/mac/MACAddressSection;->prefixSpliterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/Address;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->removePrefixLength()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/Address;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->removePrefixLength(Z)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->removePrefixLength()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->removePrefixLength(Z)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public removePrefixLength()Linet/ipaddr/mac/MACAddress;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddress;->removePrefixLength(Z)Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public removePrefixLength(Z)Linet/ipaddr/mac/MACAddress;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSection;->removePrefixLength(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public replace(IILinet/ipaddr/mac/MACAddress;I)Linet/ipaddr/mac/MACAddress;
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {p3}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v3

    sub-int p3, p2, p1

    add-int v5, p3, p4

    move v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/mac/MACAddressSection;->replace(IILinet/ipaddr/mac/MACAddressSection;II)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->reverseBits(Z)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->reverseBits(Z)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->reverseBits(Z)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public reverseBits(Z)Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSection;->reverseBits(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->reverseBytes()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->reverseBytes()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->reverseBytes()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytes()Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->reverseBytes()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->reverseBytesPerSegment()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->reverseBytesPerSegment()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytesPerSegment()Linet/ipaddr/mac/MACAddress;
    .locals 0

    .line 3
    return-object p0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->reverseSegments()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->reverseSegments()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public reverseSegments()Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->reverseSegments()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public segmentsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->segmentsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/mac/MACAddress;",
            "[",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Linet/ipaddr/mac/MACAddressSection;->segmentsSpliterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "[",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->setPrefixLength(I)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/Address;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddress;->setPrefixLength(IZ)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddress;->setPrefixLength(I)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddress;->setPrefixLength(IZ)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(I)Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSection;->setPrefixLength(I)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(IZ)Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->setPrefixLength(IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Linet/ipaddr/mac/MACAddressSection;->spliterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toAddressString()Linet/ipaddr/HostIdentifierString;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->toAddressString()Linet/ipaddr/MACAddressString;

    move-result-object v0

    return-object v0
.end method

.method public toAddressString()Linet/ipaddr/MACAddressString;
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/MACAddressString;

    invoke-direct {v0, p0}, Linet/ipaddr/MACAddressString;-><init>(Linet/ipaddr/mac/MACAddress;)V

    iput-object v0, p0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    check-cast v0, Linet/ipaddr/MACAddressString;

    return-object v0
.end method

.method public toColonDelimitedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toDashedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toDottedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->toDottedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toEUI64(Z)Linet/ipaddr/mac/MACAddress;
    .locals 8

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->isExtended()Z

    move-result v0

    const/16 v1, 0xfe

    const/4 v2, 0x4

    const/16 v3, 0xff

    const/4 v4, 0x3

    if-nez v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegmentArray(I)[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v5

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4, v5, v7}, Linet/ipaddr/mac/MACAddressSection;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    invoke-virtual {v0, v3}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    aput-object v3, v5, v4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    :goto_0
    aput-object v3, v5, v2

    const/4 p1, 0x6

    const/4 v1, 0x5

    invoke-virtual {v6, v4, p1, v5, v1}, Linet/ipaddr/mac/MACAddressSection;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    invoke-virtual {p0}, Linet/ipaddr/Address;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v5, v1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1
    invoke-virtual {v1, p1}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    :cond_2
    invoke-virtual {v0, v5}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddressInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, v4}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v4

    invoke-virtual {v0, v2}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    invoke-virtual {v4, v3}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {v0, v1}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p0

    :cond_5
    new-instance p1, Linet/ipaddr/IncompatibleAddressException;

    const-string v0, "ipaddress.mac.error.not.eui.convertible"

    invoke-direct {p1, p0, v0}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw p1
.end method

.method public toEUI64IPv6()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getIPv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {v0, p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSection(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public toLinkLocalIPv6()Linet/ipaddr/ipv6/IPv6Address;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getIPv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getLinkLocalPrefix()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->toEUI64IPv6()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v2

    invoke-virtual {v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->append(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSection;->toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toOUIPrefixBlock()Linet/ipaddr/mac/MACAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->toOUIPrefixBlock()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->toPrefixBlock()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->toPrefixBlock()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public toPrefixBlock()Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->toPrefixBlock()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddress;->checkIdentity(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public toSpaceDelimitedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->toSpaceDelimitedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upperLongValue()J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->upperLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->withoutPrefixLength()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddress;->withoutPrefixLength()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public withoutPrefixLength()Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddress;->removePrefixLength(Z)Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method
