.class public final Ljavax/servlet/http/g;
.super Lv4/i;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/ResourceBundle;


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "javax.servlet.http.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/http/g;->c:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 0

    .line 1
    iget p1, p0, Ljavax/servlet/http/g;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljavax/servlet/http/g;->b:I

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 2
    if-ltz p3, :cond_0

    iget p1, p0, Ljavax/servlet/http/g;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Ljavax/servlet/http/g;->b:I

    return-void

    :cond_0
    sget-object p1, Ljavax/servlet/http/g;->c:Ljava/util/ResourceBundle;

    const-string p2, "err.io.negativelength"

    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Ljava/io/IOException;

    const-string p2, "negative length"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
