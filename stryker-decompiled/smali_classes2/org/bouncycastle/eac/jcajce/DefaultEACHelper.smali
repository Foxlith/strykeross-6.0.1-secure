.class Lorg/bouncycastle/eac/jcajce/DefaultEACHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/eac/jcajce/EACHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 0

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    return-object p1
.end method
