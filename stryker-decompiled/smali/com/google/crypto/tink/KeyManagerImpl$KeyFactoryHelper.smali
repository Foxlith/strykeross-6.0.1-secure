.class Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyFactoryHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyFormatProtoT::",
        "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
        "KeyProtoT::",
        "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final keyFactory:Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
            "TKeyFormatProtoT;TKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
            "TKeyFormatProtoT;TKeyProtoT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->keyFactory:Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    return-void
.end method

.method private validateCreate(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyFormatProtoT;)TKeyProtoT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->keyFactory:Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->validateKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    iget-object v0, p0, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->keyFactory:Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->createKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object p1
.end method


# virtual methods
.method public castValidateCreate(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ")TKeyProtoT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->keyFactory:Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    invoke-virtual {v0}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->getKeyFormatClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expected proto of type "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->keyFactory:Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    invoke-virtual {v1}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->getKeyFormatClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/crypto/tink/KeyManagerImpl;->access$000(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->validateCreate(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseValidateCreate(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            ")TKeyProtoT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->keyFactory:Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/KeyManagerImpl$KeyFactoryHelper;->validateCreate(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method
