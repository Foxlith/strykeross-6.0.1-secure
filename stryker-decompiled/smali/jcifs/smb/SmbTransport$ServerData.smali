.class Ljcifs/smb/SmbTransport$ServerData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/SmbTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerData"
.end annotation


# instance fields
.field capabilities:I

.field encryptedPasswords:Z

.field encryptionKey:[B

.field encryptionKeyLength:I

.field flags:B

.field flags2:I

.field guid:[B

.field maxBufferSize:I

.field maxMpxCount:I

.field maxNumberVcs:I

.field maxRawSize:I

.field oemDomainName:Ljava/lang/String;

.field security:I

.field securityMode:I

.field serverTime:J

.field serverTimeZone:I

.field sessionKey:I

.field signaturesEnabled:Z

.field signaturesRequired:Z

.field final synthetic this$0:Ljcifs/smb/SmbTransport;


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbTransport;)V
    .locals 0

    iput-object p1, p0, Ljcifs/smb/SmbTransport$ServerData;->this$0:Ljcifs/smb/SmbTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
