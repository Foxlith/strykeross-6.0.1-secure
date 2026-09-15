.class public Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchMeasurementTool"
.end annotation


# static fields
.field static final maxEventAmount:I = 0x64


# instance fields
.field force:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field p:Lcom/stryker/terminal/MainActivity;

.field radius:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->force:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->radius:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->p:Lcom/stryker/terminal/MainActivity;

    return-void
.end method


# virtual methods
.method public getAverageForce()I
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->force:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->force:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v1, v0

    return v1
.end method

.method public getAverageRadius()I
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->radius:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->radius:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v1, v0

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->force:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    float-to-double v1, v1

    .line 10
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    mul-double/2addr v1, v3

    .line 16
    double-to-int v1, v1

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->radius:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    float-to-double v1, p2

    .line 32
    mul-double/2addr v1, v3

    .line 33
    double-to-int p2, v1

    .line 34
    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->p:Lcom/stryker/terminal/MainActivity;

    .line 41
    .line 42
    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    sget v0, Lcom/stryker/terminal/xorg/R$string;->measurepressure_response:I

    .line 47
    .line 48
    iget-object v1, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->force:Ljava/util/ArrayList;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-static {v1, v2}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v3, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->radius:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-static {v3, v2}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p1, p2}, Lcom/stryker/terminal/MainActivity;->setText(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-wide/16 p1, 0xa

    .line 73
    .line 74
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    :catch_0
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->force:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    const/16 p2, 0x64

    .line 84
    .line 85
    if-lt p1, p2, :cond_0

    .line 86
    .line 87
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->p:Lcom/stryker/terminal/MainActivity;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const/4 p2, 0x0

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->getAverageForce()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    sput p1, Lcom/stryker/terminal/Globals;->ClickScreenPressure:I

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->getAverageRadius()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    sput p1, Lcom/stryker/terminal/Globals;->ClickScreenTouchspotSize:I

    .line 108
    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string p2, "SDL: measured average force "

    .line 112
    .line 113
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget p2, Lcom/stryker/terminal/Globals;->ClickScreenPressure:I

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p2, " radius "

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    sget p2, Lcom/stryker/terminal/Globals;->ClickScreenTouchspotSize:I

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const-string p2, "SDL"

    .line 136
    .line 137
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->p:Lcom/stryker/terminal/MainActivity;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    .line 143
    .line 144
    .line 145
    :cond_0
    return v2
.end method
