.class Lcom/topjohnwu/superuser/internal/CommandSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/topjohnwu/superuser/internal/ShellInputSource;


# instance fields
.field private final cmd:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/CommandSource;->cmd:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public serve(Ljava/io/OutputStream;)V
    .locals 5

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/CommandSource;->cmd:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
