.class Lorg/bouncycastle/est/ESTResponse$1;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/ESTResponse;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/est/ESTResponse;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/est/ESTResponse;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/ESTResponse$1;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
