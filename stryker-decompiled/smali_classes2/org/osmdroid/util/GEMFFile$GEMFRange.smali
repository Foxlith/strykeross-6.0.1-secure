.class Lorg/osmdroid/util/GEMFFile$GEMFRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/util/GEMFFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GEMFRange"
.end annotation


# instance fields
.field offset:Ljava/lang/Long;

.field sourceIndex:Ljava/lang/Integer;

.field final synthetic this$0:Lorg/osmdroid/util/GEMFFile;

.field xMax:Ljava/lang/Integer;

.field xMin:Ljava/lang/Integer;

.field yMax:Ljava/lang/Integer;

.field yMin:Ljava/lang/Integer;

.field zoom:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lorg/osmdroid/util/GEMFFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->this$0:Lorg/osmdroid/util/GEMFFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/osmdroid/util/GEMFFile;Lorg/osmdroid/util/GEMFFile$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/osmdroid/util/GEMFFile$GEMFRange;-><init>(Lorg/osmdroid/util/GEMFFile;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    iget-object v1, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    iget-object v2, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    iget-object v4, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    iget-object v5, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    iget-object v6, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "GEMF Range: source=%d, zoom=%d, x=%d-%d, y=%d-%d, offset=0x%08X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
