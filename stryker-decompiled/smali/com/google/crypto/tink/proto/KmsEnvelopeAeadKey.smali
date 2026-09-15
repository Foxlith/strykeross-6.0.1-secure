.class public final Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;",
        "Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private params_:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    const-class v1, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->setVersion(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->clearVersion()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->setParams(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->mergeParams(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->clearParams()V

    return-void
.end method

.method private clearParams()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->params_:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object v0
.end method

.method private mergeParams(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->params_:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->getDefaultInstance()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->params_:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->newBuilder(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->params_:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setParams(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->params_:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    return-void
.end method

.method private setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->version_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    return-object p1

    :pswitch_4
    const-string p1, "version_"

    const-string p2, "params_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t"

    sget-object p3, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;

    invoke-direct {p1, p2}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;-><init>(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getParams()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->params_:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->getDefaultInstance()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->version_:I

    return v0
.end method

.method public hasParams()Z
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->params_:Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
