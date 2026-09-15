.class public Lorg/bouncycastle/oer/its/PsidSsp$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/PsidSsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private psid:Lorg/bouncycastle/oer/its/Psid;

.field private ssp:Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPsidSsp()Lorg/bouncycastle/oer/its/PsidSsp;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/PsidSsp;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/PsidSsp$Builder;->psid:Lorg/bouncycastle/oer/its/Psid;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PsidSsp$Builder;->ssp:Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/PsidSsp;-><init>(Lorg/bouncycastle/oer/its/Psid;Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;)V

    return-object v0
.end method

.method public setPsid(Lorg/bouncycastle/oer/its/Psid;)Lorg/bouncycastle/oer/its/PsidSsp$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PsidSsp$Builder;->psid:Lorg/bouncycastle/oer/its/Psid;

    return-object p0
.end method

.method public setSsp(Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;)Lorg/bouncycastle/oer/its/PsidSsp$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PsidSsp$Builder;->ssp:Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;

    return-object p0
.end method
