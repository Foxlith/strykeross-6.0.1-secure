.class Lorg/bouncycastle/eac/jcajce/NamedEACHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/eac/jcajce/EACHelper;


# instance fields
.field private final providerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/eac/jcajce/NamedEACHelper;->providerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/eac/jcajce/NamedEACHelper;->providerName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    return-object p1
.end method
