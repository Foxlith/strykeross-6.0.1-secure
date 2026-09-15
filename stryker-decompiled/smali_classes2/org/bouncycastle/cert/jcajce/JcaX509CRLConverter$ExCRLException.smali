.class Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;
.super Ljava/security/cert/CRLException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExCRLException"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field final synthetic this$0:Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;->this$0:Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;

    invoke-direct {p0, p2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
