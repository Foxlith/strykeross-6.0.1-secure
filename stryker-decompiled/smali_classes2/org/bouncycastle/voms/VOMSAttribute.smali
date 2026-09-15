.class public Lorg/bouncycastle/voms/VOMSAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/voms/VOMSAttribute$FQAN;
    }
.end annotation


# static fields
.field public static final VOMS_ATTR_OID:Ljava/lang/String; = "1.3.6.1.4.1.8005.100.100.4"


# instance fields
.field private myAC:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

.field private myFQANs:Ljava/util/List;

.field private myHostPort:Ljava/lang/String;

.field private myStringList:Ljava/util/List;

.field private myVo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509AttributeCertificateHolder;)V
    .locals 10

    const-string v0, "/"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myStringList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myFQANs:Ljava/util/List;

    if-eqz p1, :cond_6

    iput-object p1, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myAC:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.6.1.4.1.8005.100.100.4"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getAttributes(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lorg/bouncycastle/asn1/x509/Attribute;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    array-length v4, v1

    if-eq v3, v4, :cond_5

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/Attribute;->getAttributeValues()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->getPolicyAuthority()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v6, v7, :cond_4

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myVo:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myHostPort:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->getValueType()I

    move-result v6

    if-ne v6, v8, :cond_3

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->getValues()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/bouncycastle/asn1/ASN1OctetString;

    move v5, v2

    :goto_1
    array-length v6, v4

    if-eq v5, v6, :cond_2

    new-instance v6, Ljava/lang/String;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    new-instance v7, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;

    invoke-direct {v7, p0, v6}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;-><init>(Lorg/bouncycastle/voms/VOMSAttribute;Ljava/lang/String;)V

    iget-object v8, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myStringList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myVo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myStringList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myFQANs:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOMS attribute values are not encoded as octet strings, policyAuthority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad encoding of VOMS policyAuthority : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    return-void

    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Badly encoded VOMS extension in AC issued by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getIssuer()Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3
    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "VOMSAttribute: AttributeCertificate is NULL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAC()Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myAC:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    return-object v0
.end method

.method public getFullyQualifiedAttributes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myStringList:Ljava/util/List;

    return-object v0
.end method

.method public getHostPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myHostPort:Ljava/lang/String;

    return-object v0
.end method

.method public getListOfFQAN()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myFQANs:Ljava/util/List;

    return-object v0
.end method

.method public getVO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myVo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VO      :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myVo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nHostPort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myHostPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nFQANs   :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myFQANs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
