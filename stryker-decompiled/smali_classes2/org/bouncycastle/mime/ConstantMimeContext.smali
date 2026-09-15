.class public Lorg/bouncycastle/mime/ConstantMimeContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/mime/MimeContext;
.implements Lorg/bouncycastle/mime/MimeMultipartContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyContext(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    return-object p2
.end method

.method public createContext(I)Lorg/bouncycastle/mime/MimeContext;
    .locals 0

    return-object p0
.end method
