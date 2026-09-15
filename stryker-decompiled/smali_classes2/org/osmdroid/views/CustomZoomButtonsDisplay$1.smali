.class synthetic Lorg/osmdroid/views/CustomZoomButtonsDisplay$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/CustomZoomButtonsDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$osmdroid$views$CustomZoomButtonsDisplay$HorizontalPosition:[I

.field static final synthetic $SwitchMap$org$osmdroid$views$CustomZoomButtonsDisplay$VerticalPosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;->values()[Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$1;->$SwitchMap$org$osmdroid$views$CustomZoomButtonsDisplay$VerticalPosition:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;->TOP:Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/osmdroid/views/CustomZoomButtonsDisplay$1;->$SwitchMap$org$osmdroid$views$CustomZoomButtonsDisplay$VerticalPosition:[I

    sget-object v3, Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;->BOTTOM:Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/osmdroid/views/CustomZoomButtonsDisplay$1;->$SwitchMap$org$osmdroid$views$CustomZoomButtonsDisplay$VerticalPosition:[I

    sget-object v4, Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;->CENTER:Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->values()[Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/osmdroid/views/CustomZoomButtonsDisplay$1;->$SwitchMap$org$osmdroid$views$CustomZoomButtonsDisplay$HorizontalPosition:[I

    :try_start_3
    sget-object v4, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->LEFT:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lorg/osmdroid/views/CustomZoomButtonsDisplay$1;->$SwitchMap$org$osmdroid$views$CustomZoomButtonsDisplay$HorizontalPosition:[I

    sget-object v3, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->RIGHT:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$1;->$SwitchMap$org$osmdroid$views$CustomZoomButtonsDisplay$HorizontalPosition:[I

    sget-object v1, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->CENTER:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
