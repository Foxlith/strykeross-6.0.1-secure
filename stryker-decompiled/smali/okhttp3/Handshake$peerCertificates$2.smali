.class final Lokhttp3/Handshake$peerCertificates$2;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lj5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lj5/a;"
    }
.end annotation


# instance fields
.field final synthetic $peerCertificatesFn:Lj5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/Handshake$peerCertificates$2;->$peerCertificatesFn:Lj5/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/Handshake$peerCertificates$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/Handshake$peerCertificates$2;->$peerCertificatesFn:Lj5/a;

    invoke-interface {v0}, Lj5/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lx4/o;->a:Lx4/o;

    :goto_0
    return-object v0
.end method
