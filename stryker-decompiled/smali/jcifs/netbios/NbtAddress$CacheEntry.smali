.class final Ljcifs/netbios/NbtAddress$CacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/netbios/NbtAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheEntry"
.end annotation


# instance fields
.field address:Ljcifs/netbios/NbtAddress;

.field expiration:J

.field hostName:Ljcifs/netbios/Name;


# direct methods
.method public constructor <init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->hostName:Ljcifs/netbios/Name;

    iput-object p2, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    iput-wide p3, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    return-void
.end method
