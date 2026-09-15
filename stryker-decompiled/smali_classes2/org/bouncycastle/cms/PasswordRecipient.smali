.class public interface abstract Lorg/bouncycastle/cms/PasswordRecipient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/Recipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/PasswordRecipient$PRF;
    }
.end annotation


# static fields
.field public static final PKCS5_SCHEME2:I = 0x0

.field public static final PKCS5_SCHEME2_UTF8:I = 0x1


# virtual methods
.method public abstract calculateDerivedKey(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B
.end method

.method public abstract getPassword()[C
.end method

.method public abstract getPasswordConversionScheme()I
.end method

.method public abstract getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/bouncycastle/cms/RecipientOperator;
.end method
