.class public Lcom/zalexdev/stryker/geomac/GeoMacInline;
.super Lf/q;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/regex/Pattern;


# instance fields
.field public a:Ll4/l;

.field public b:Lz2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "((\\w{2}:){5}\\w{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zalexdev/stryker/geomac/GeoMacInline;->c:Ljava/util/regex/Pattern;

    const-string v0, "[0-9]*\\.[0-9]+,\\s*[0-9]*\\.[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/q;-><init>()V

    return-void
.end method

.method public static f(Lcom/zalexdev/stryker/geomac/GeoMacInline;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "clipboard"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/ClipboardManager;

    .line 8
    .line 9
    const-string v1, "GeoMac"

    .line 10
    .line 11
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/zalexdev/stryker/geomac/GeoMacInline;->a:Ll4/l;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Copied "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/a;->z(Landroid/view/Window;Z)V

    const p1, 0x7f0d001e

    invoke-virtual {p0, p1}, Lf/q;->setContentView(I)V

    new-instance p1, Ll4/l;

    invoke-direct {p1, p0}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zalexdev/stryker/geomac/GeoMacInline;->a:Ll4/l;

    new-instance v1, Lz2/a;

    invoke-direct {v1, p1}, Lz2/a;-><init>(Ll4/l;)V

    iput-object v1, p0, Lcom/zalexdev/stryker/geomac/GeoMacInline;->b:Lz2/a;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lorg/osmdroid/config/IConfigurationProvider;->load(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    const p1, 0x7f0a01d0

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v1, Lcom/nambimobile/widgets/efab/a;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zalexdev/stryker/geomac/GeoMacInline;->a:Ll4/l;

    const-string v0, "Nothing to look up"

    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    sget-object v1, Lcom/zalexdev/stryker/geomac/GeoMacInline;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/zalexdev/stryker/geomac/GeoMacInline;->a:Ll4/l;

    const-string v0, "No valid MAC address found"

    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const p1, 0x7f0a04e3

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-virtual {v4, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    const v0, 0x7f0a0224

    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/osmdroid/views/MapView;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    invoke-virtual {v6, p1}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    invoke-virtual {v6}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v5

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-interface {v5, v0, v1}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    const p1, 0x7f0a0398

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAC Address: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Ln1/b0;

    const/4 v7, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Ln1/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v1, "geomac-inline"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
