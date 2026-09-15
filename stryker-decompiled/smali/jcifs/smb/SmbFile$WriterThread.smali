.class Ljcifs/smb/SmbFile$WriterThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/SmbFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriterThread"
.end annotation


# instance fields
.field b:[B

.field dest:Ljcifs/smb/SmbFile;

.field e:Ljcifs/smb/SmbException;

.field n:I

.field off:J

.field ready:Z

.field req:Ljcifs/smb/SmbComWrite;

.field reqx:Ljcifs/smb/SmbComWriteAndX;

.field resp:Ljcifs/smb/ServerMessageBlock;

.field final synthetic this$0:Ljcifs/smb/SmbFile;

.field useNTSmbs:Z


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbFile;)V
    .locals 1

    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->this$0:Ljcifs/smb/SmbFile;

    const-string v0, "JCIFS-WriterThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    iget-object p1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object p1, p1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/smb/SmbFile$WriterThread;->useNTSmbs:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljcifs/smb/SmbComWriteAndX;

    invoke-direct {p1}, Ljcifs/smb/SmbComWriteAndX;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->reqx:Ljcifs/smb/SmbComWriteAndX;

    new-instance p1, Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {p1}, Ljcifs/smb/SmbComWriteAndXResponse;-><init>()V

    :goto_0
    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    goto :goto_1

    :cond_0
    new-instance p1, Ljcifs/smb/SmbComWrite;

    invoke-direct {p1}, Ljcifs/smb/SmbComWrite;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->req:Ljcifs/smb/SmbComWrite;

    new-instance p1, Ljcifs/smb/SmbComWriteResponse;

    invoke-direct {p1}, Ljcifs/smb/SmbComWriteResponse;-><init>()V

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    :goto_1
    iget-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_0
    iget v8, p0, Ljcifs/smb/SmbFile$WriterThread;->n:I
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_1
    :try_start_2
    iget-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->useNTSmbs:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->reqx:Ljcifs/smb/SmbComWriteAndX;

    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iget v2, v0, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v3, p0, Ljcifs/smb/SmbFile$WriterThread;->off:J

    iget-object v6, p0, Ljcifs/smb/SmbFile$WriterThread;->b:[B

    const/4 v7, 0x0

    move v5, v8

    invoke-virtual/range {v1 .. v8}, Ljcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->reqx:Ljcifs/smb/SmbComWriteAndX;

    iget-object v2, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->req:Ljcifs/smb/SmbComWrite;

    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iget v2, v0, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v3, p0, Ljcifs/smb/SmbFile$WriterThread;->off:J

    iget-object v6, p0, Ljcifs/smb/SmbFile$WriterThread;->b:[B

    const/4 v7, 0x0

    move v5, v8

    invoke-virtual/range {v1 .. v8}, Ljcifs/smb/SmbComWrite;->setParam(IJI[BII)V

    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->req:Ljcifs/smb/SmbComWrite;

    iget-object v2, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;
    :try_end_2
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_3
    :try_start_3
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "WriterThread"

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    goto :goto_5

    :goto_4
    iput-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :goto_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized write([BILjcifs/smb/SmbFile;J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->b:[B

    iput p2, p0, Ljcifs/smb/SmbFile$WriterThread;->n:I

    iput-object p3, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iput-wide p4, p0, Ljcifs/smb/SmbFile$WriterThread;->off:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
