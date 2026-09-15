.class public Lorg/bouncycastle/oer/its/PKRecipientInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/PKRecipientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private encKey:Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;

.field private recipientId:Lorg/bouncycastle/oer/its/HashedId;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPKRecipientInfo()Lorg/bouncycastle/oer/its/PKRecipientInfo;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/PKRecipientInfo;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/PKRecipientInfo$Builder;->recipientId:Lorg/bouncycastle/oer/its/HashedId;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PKRecipientInfo$Builder;->encKey:Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/PKRecipientInfo;-><init>(Lorg/bouncycastle/oer/its/HashedId;Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;)V

    return-object v0
.end method

.method public setEncKey(Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;)Lorg/bouncycastle/oer/its/PKRecipientInfo$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PKRecipientInfo$Builder;->encKey:Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;

    return-object p0
.end method

.method public setRecipientId(Lorg/bouncycastle/oer/its/HashedId;)Lorg/bouncycastle/oer/its/PKRecipientInfo$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PKRecipientInfo$Builder;->recipientId:Lorg/bouncycastle/oer/its/HashedId;

    return-object p0
.end method
