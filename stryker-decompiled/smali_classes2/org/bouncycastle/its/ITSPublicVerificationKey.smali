.class public Lorg/bouncycastle/its/ITSPublicVerificationKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final verificationKey:Lorg/bouncycastle/oer/its/PublicVerificationKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/PublicVerificationKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/ITSPublicVerificationKey;->verificationKey:Lorg/bouncycastle/oer/its/PublicVerificationKey;

    return-void
.end method


# virtual methods
.method public toASN1Structure()Lorg/bouncycastle/oer/its/PublicVerificationKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/ITSPublicVerificationKey;->verificationKey:Lorg/bouncycastle/oer/its/PublicVerificationKey;

    return-object v0
.end method
