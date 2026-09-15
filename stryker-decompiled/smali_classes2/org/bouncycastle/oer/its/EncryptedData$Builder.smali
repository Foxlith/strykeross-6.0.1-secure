.class public Lorg/bouncycastle/oer/its/EncryptedData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/EncryptedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private ciphertext:Lorg/bouncycastle/oer/its/SymmetricCiphertext;

.field private recipients:Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEncryptedData()Lorg/bouncycastle/oer/its/EncryptedData;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/EncryptedData;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/EncryptedData$Builder;->recipients:Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/EncryptedData$Builder;->ciphertext:Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/EncryptedData;-><init>(Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;Lorg/bouncycastle/oer/its/SymmetricCiphertext;)V

    return-object v0
.end method

.method public setCiphertext(Lorg/bouncycastle/oer/its/SymmetricCiphertext;)Lorg/bouncycastle/oer/its/EncryptedData$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/EncryptedData$Builder;->ciphertext:Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    return-object p0
.end method

.method public setRecipients(Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;)Lorg/bouncycastle/oer/its/EncryptedData$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/EncryptedData$Builder;->recipients:Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;

    return-object p0
.end method
