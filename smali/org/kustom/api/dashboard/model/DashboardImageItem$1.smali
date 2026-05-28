.class Lorg/kustom/api/dashboard/model/DashboardImageItem$1;
.super Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
.source "DashboardImageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kustom/api/dashboard/model/DashboardImageItem;->bindView(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/kustom/api/dashboard/model/DashboardImageItem;

.field final synthetic val$holder:Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;


# direct methods
.method constructor <init>(Lorg/kustom/api/dashboard/model/DashboardImageItem;Landroid/widget/ImageView;Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/kustom/api/dashboard/model/DashboardImageItem;
    .param p2, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/kustom/api/dashboard/model/DashboardImageItem$1;->this$0:Lorg/kustom/api/dashboard/model/DashboardImageItem;

    iput-object p3, p0, Lorg/kustom/api/dashboard/model/DashboardImageItem$1;->val$holder:Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Bitmap;
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "t":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<-Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V

    .line 56
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardImageItem$1;->val$holder:Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->onBitmapSet(Landroid/graphics/Bitmap;Z)V

    .line 57
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/kustom/api/dashboard/model/DashboardImageItem$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
