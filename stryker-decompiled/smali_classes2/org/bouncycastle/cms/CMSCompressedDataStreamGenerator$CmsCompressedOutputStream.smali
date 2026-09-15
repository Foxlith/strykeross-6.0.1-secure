.class Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CmsCompressedOutputStream"
.end annotation


# instance fields
.field private _cGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _eiGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _out:Ljava/io/OutputStream;

.field private _sGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

.field final synthetic this$0:Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->this$0:Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_sGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p4, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_cGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p5, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_eiGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_eiGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_cGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_sGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
