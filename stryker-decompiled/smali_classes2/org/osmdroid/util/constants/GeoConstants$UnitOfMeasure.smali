.class public final enum Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/util/constants/GeoConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnitOfMeasure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

.field public static final enum foot:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

.field public static final enum kilometer:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

.field public static final enum meter:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

.field public static final enum nauticalMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

.field public static final enum statuteMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;


# instance fields
.field private final mConversionFactorToMeters:D

.field private final mStringResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const-string v1, "meter"

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sget v5, Lorg/osmdroid/library/R$string;->format_distance_only_meter:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;-><init>(Ljava/lang/String;IDI)V

    sput-object v6, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->meter:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    new-instance v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const-string v8, "kilometer"

    const/4 v9, 0x1

    const-wide v10, 0x408f400000000000L    # 1000.0

    sget v12, Lorg/osmdroid/library/R$string;->format_distance_only_kilometer:I

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;-><init>(Ljava/lang/String;IDI)V

    sput-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->kilometer:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    new-instance v1, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const-string v14, "statuteMile"

    const/4 v15, 0x2

    const-wide v16, 0x409925604189374cL    # 1609.344

    sget v18, Lorg/osmdroid/library/R$string;->format_distance_only_mile:I

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;-><init>(Ljava/lang/String;IDI)V

    sput-object v1, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->statuteMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    new-instance v2, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const-string v8, "nauticalMile"

    const/4 v9, 0x3

    const-wide v10, 0x409cf00000000000L    # 1852.0

    sget v12, Lorg/osmdroid/library/R$string;->format_distance_only_nautical_mile:I

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;-><init>(Ljava/lang/String;IDI)V

    sput-object v2, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->nauticalMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    new-instance v3, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const-string v14, "foot"

    const/4 v15, 0x4

    const-wide v16, 0x3fd381d7db752e6eL    # 0.304799999536704

    sget v18, Lorg/osmdroid/library/R$string;->format_distance_only_foot:I

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;-><init>(Ljava/lang/String;IDI)V

    sput-object v3, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->foot:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    filled-new-array {v6, v0, v1, v2, v3}, [Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->$VALUES:[Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->mConversionFactorToMeters:D

    iput p5, p0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->mStringResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;
    .locals 1

    const-class v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    return-object p0
.end method

.method public static values()[Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;
    .locals 1

    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->$VALUES:[Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-virtual {v0}, [Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    return-object v0
.end method


# virtual methods
.method public getConversionFactorToMeters()D
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->mConversionFactorToMeters:D

    return-wide v0
.end method

.method public getStringResId()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->mStringResId:I

    return v0
.end method
