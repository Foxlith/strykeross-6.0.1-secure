.class public final enum Lorg/bouncycastle/oer/OERDefinition$BaseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/oer/OERDefinition$BaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum BIT_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum BMPString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum BOOLEAN:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum CHOICE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum ENUM_ITEM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum IA5String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum IS0646String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum NULL:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum NumericString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum PrintableString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum SEQ:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum SEQ_OF:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum UniversalString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum VisibleString:Lorg/bouncycastle/oer/OERDefinition$BaseType;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v0, v1

    const-string v2, "SEQ"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v1, v2

    const-string v3, "SEQ_OF"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ_OF:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v3, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v2, v3

    const-string v4, "CHOICE"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/bouncycastle/oer/OERDefinition$BaseType;->CHOICE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v4, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v3, v4

    const-string v5, "ENUM"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v5, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v4, v5

    const-string v6, "INT"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v6, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v5, v6

    const-string v7, "OCTET_STRING"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v7, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v6, v7

    const-string v8, "UTF8_STRING"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v8, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v7, v8

    const-string v9, "BIT_STRING"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BIT_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v9, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v8, v9

    const-string v10, "NULL"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/bouncycastle/oer/OERDefinition$BaseType;->NULL:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v10, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v9, v10

    const-string v11, "EXTENSION"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v11, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v10, v11

    const-string v12, "ENUM_ITEM"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM_ITEM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v12, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v11, v12

    const-string v13, "BOOLEAN"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BOOLEAN:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v13, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v12, v13

    const-string v14, "IS0646String"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/bouncycastle/oer/OERDefinition$BaseType;->IS0646String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v14, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v13, v14

    const-string v15, "PrintableString"

    move-object/from16 v19, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/bouncycastle/oer/OERDefinition$BaseType;->PrintableString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v14, v0

    const-string v15, "NumericString"

    move-object/from16 v20, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->NumericString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object v15, v0

    const-string v1, "BMPString"

    move-object/from16 v21, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BMPString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object/from16 v16, v0

    const-string v1, "UniversalString"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UniversalString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object/from16 v17, v0

    const-string v1, "IA5String"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->IA5String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object/from16 v18, v0

    const-string v1, "VisibleString"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->VisibleString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    filled-new-array/range {v0 .. v18}, [Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->$VALUES:[Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$BaseType;
    .locals 1

    const-class v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/oer/OERDefinition$BaseType;
    .locals 1

    sget-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->$VALUES:[Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-virtual {v0}, [Lorg/bouncycastle/oer/OERDefinition$BaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-object v0
.end method
