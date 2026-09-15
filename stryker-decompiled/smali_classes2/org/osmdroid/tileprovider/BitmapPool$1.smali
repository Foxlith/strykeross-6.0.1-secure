.class Lorg/osmdroid/tileprovider/BitmapPool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/BitmapPool;

.field final synthetic val$pDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/BitmapPool;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/BitmapPool$1;->this$0:Lorg/osmdroid/tileprovider/BitmapPool;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/BitmapPool$1;->val$pDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/BitmapPool$1;->this$0:Lorg/osmdroid/tileprovider/BitmapPool;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/BitmapPool$1;->val$pDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->access$000(Lorg/osmdroid/tileprovider/BitmapPool;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
