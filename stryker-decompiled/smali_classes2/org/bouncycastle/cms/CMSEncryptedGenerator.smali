.class public Lorg/bouncycastle/cms/CMSEncryptedGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSEncryptedGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method


# virtual methods
.method public setUnprotectedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEncryptedGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method
