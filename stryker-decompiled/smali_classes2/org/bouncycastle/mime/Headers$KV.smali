.class Lorg/bouncycastle/mime/Headers$KV;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/mime/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KV"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field final synthetic this$0:Lorg/bouncycastle/mime/Headers;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/mime/Headers;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/mime/Headers$KV;->this$0:Lorg/bouncycastle/mime/Headers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/mime/Headers$KV;->key:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/mime/Headers$KV;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/mime/Headers$KV;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/mime/Headers$KV;->this$0:Lorg/bouncycastle/mime/Headers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p2, Lorg/bouncycastle/mime/Headers$KV;->key:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/mime/Headers$KV;->key:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/mime/Headers$KV;->value:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/mime/Headers$KV;->value:Ljava/lang/String;

    return-void
.end method
