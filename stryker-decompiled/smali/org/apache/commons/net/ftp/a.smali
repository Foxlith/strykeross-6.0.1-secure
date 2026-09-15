.class public final synthetic Lorg/apache/commons/net/ftp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/net/ftp/FTPFileFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/net/ftp/FTPFileFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/a;->a:Lorg/apache/commons/net/ftp/FTPFileFilter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/a;->a:Lorg/apache/commons/net/ftp/FTPFileFilter;

    check-cast p1, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-static {v0, p1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->a(Lorg/apache/commons/net/ftp/FTPFileFilter;Lorg/apache/commons/net/ftp/FTPFile;)Z

    move-result p1

    return p1
.end method
