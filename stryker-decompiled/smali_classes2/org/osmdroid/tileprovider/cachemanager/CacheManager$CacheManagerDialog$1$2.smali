.class Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1$2;->this$1:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1$2;->this$1:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;

    iget-object p1, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    invoke-static {p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->access$200(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
