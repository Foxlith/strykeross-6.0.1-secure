.class public final enum Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignatureAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field public static final enum SHA3_512withDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field public static final enum SHA3_512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field public static final enum SHA3_512withRSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field public static final enum SHA512withDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field public static final enum SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field public static final enum SHA512withRSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const-string v1, "SHA512withDSA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    new-instance v1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const-string v2, "SHA3_512withDSA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA3_512withDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    new-instance v2, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const-string v3, "SHA512withECDSA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    new-instance v3, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const-string v4, "SHA3_512withECDSA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA3_512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    new-instance v4, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const-string v5, "SHA512withRSA"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withRSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    new-instance v5, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const-string v6, "SHA3_512withRSA"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA3_512withRSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    filled-new-array/range {v0 .. v5}, [Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->$VALUES:[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

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

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->$VALUES:[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    invoke-virtual {v0}, [Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    return-object v0
.end method
