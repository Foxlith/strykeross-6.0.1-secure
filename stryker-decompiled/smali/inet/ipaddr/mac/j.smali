.class public final synthetic Linet/ipaddr/mac/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;
.implements Lorg/apache/commons/net/ftp/FTPFileFilter;
.implements Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/mac/j;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 1

    .line 1
    iget v0, p0, Linet/ipaddr/mac/j;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPFileFilters;->b(Lorg/apache/commons/net/ftp/FTPFile;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_1
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPFileFilters;->a(Lorg/apache/commons/net/ftp/FTPFile;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final apply(ZZLjava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    .line 1
    check-cast p3, Linet/ipaddr/mac/MACAddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;->m(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public final chunkReceived(Lorg/apache/commons/net/imap/IMAP;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->a(Lorg/apache/commons/net/imap/IMAP;)Z

    move-result p1

    return p1
.end method
