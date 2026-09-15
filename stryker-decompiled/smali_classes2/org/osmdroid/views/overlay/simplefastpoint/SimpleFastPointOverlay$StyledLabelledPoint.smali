.class public Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;
.super Landroid/graphics/Point;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StyledLabelledPoint"
.end annotation


# instance fields
.field private mPointStyle:Landroid/graphics/Paint;

.field private mTextStyle:Landroid/graphics/Paint;

.field private mlabel:Ljava/lang/String;

.field final synthetic this$0:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;Landroid/graphics/Point;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->this$0:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;

    invoke-direct {p0, p2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->mlabel:Ljava/lang/String;

    iput-object p4, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->mPointStyle:Landroid/graphics/Paint;

    iput-object p5, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->mTextStyle:Landroid/graphics/Paint;

    return-void
.end method

.method public static synthetic access$000(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->mlabel:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->mPointStyle:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->mTextStyle:Landroid/graphics/Paint;

    return-object p0
.end method
