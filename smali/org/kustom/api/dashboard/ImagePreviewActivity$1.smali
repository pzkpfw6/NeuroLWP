.class Lorg/kustom/api/dashboard/ImagePreviewActivity$1;
.super Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
.source "ImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kustom/api/dashboard/ImagePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lorg/kustom/api/dashboard/ImagePreviewActivity;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/kustom/api/dashboard/ImagePreviewActivity;
    .param p2, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$1;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 3
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
    .local p2, "t":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<-Landroid/graphics/Bitmap;>;"
    const/16 v2, 0x8

    .line 80
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$1;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    invoke-static {v0, p1}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->access$002(Lorg/kustom/api/dashboard/ImagePreviewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$1;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    sget v1, Lorg/kustom/api/dashboard/R$id;->text:I

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lorg/kustom/api/dashboard/ImagePreviewActivity$1;->this$0:Lorg/kustom/api/dashboard/ImagePreviewActivity;

    sget v1, Lorg/kustom/api/dashboard/R$id;->progress:I

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V

    .line 84
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/kustom/api/dashboard/ImagePreviewActivity$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
