.class public final synthetic Lorg/apache/commons/net/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:[Ljava/security/cert/Certificate;


# direct methods
.method public synthetic constructor <init>([Ljava/security/cert/Certificate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/util/a;->a:[Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/a;->a:[Ljava/security/cert/Certificate;

    invoke-static {v0, p1}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->a([Ljava/security/cert/Certificate;I)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method
