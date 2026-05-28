.class public Lorg/kustom/api/dashboard/model/DashboardImageItem;
.super Lorg/kustom/api/dashboard/model/DashboardItem;
.source "DashboardImageItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/kustom/api/dashboard/model/DashboardItem",
        "<",
        "Lorg/kustom/api/dashboard/model/DashboardImageItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImageData:Lorg/kustom/api/dashboard/model/ImageData;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;F)V
    .locals 1
    .param p1, "image"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "screenRatio"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lorg/kustom/api/dashboard/model/DashboardItem;-><init>(F)V

    .line 24
    new-instance v0, Lorg/kustom/api/dashboard/model/ImageData;

    invoke-direct {v0, p1}, Lorg/kustom/api/dashboard/model/ImageData;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardImageItem;->mImageData:Lorg/kustom/api/dashboard/model/ImageData;

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/kustom/api/dashboard/model/DashboardImageItem;->bindView(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;Ljava/util/List;)V
    .locals 4
    .param p1, "holder"    # Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Lorg/kustom/api/dashboard/model/DashboardItem;->bindView(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;Ljava/util/List;)V

    .line 44
    iget-object v1, p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lorg/kustom/api/dashboard/model/DashboardImageItem;->mImageData:Lorg/kustom/api/dashboard/model/ImageData;

    invoke-virtual {v1}, Lorg/kustom/api/dashboard/model/ImageData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->setTitle(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lorg/kustom/api/dashboard/model/DashboardImageItem;->mImageData:Lorg/kustom/api/dashboard/model/ImageData;

    invoke-virtual {v1}, Lorg/kustom/api/dashboard/model/ImageData;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->setAuthor(Ljava/lang/String;)V

    .line 47
    iget-object v1, p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mBackground:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    iget-object v1, p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mBackground:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->setVisibility(I)V

    .line 49
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/kustom/api/dashboard/model/DashboardImageItem;->mImageData:Lorg/kustom/api/dashboard/model/ImageData;

    .line 51
    invoke-virtual {v2}, Lorg/kustom/api/dashboard/model/ImageData;->getThumbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lorg/kustom/api/dashboard/model/DashboardImageItem$1;

    iget-object v3, p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mPreview:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    invoke-direct {v2, p0, v3, p1}, Lorg/kustom/api/dashboard/model/DashboardImageItem$1;-><init>(Lorg/kustom/api/dashboard/model/DashboardImageItem;Landroid/widget/ImageView;Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;)V

    .line 52
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 59
    return-void
.end method

.method public getImageData()Lorg/kustom/api/dashboard/model/ImageData;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardImageItem;->mImageData:Lorg/kustom/api/dashboard/model/ImageData;

    return-object v0
.end method

.method public getLayoutRes()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lorg/kustom/api/dashboard/R$layout;->kustom_dashboard_list_item_wallpaper:I

    return v0
.end method

.method hasTranslucentInfo()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method
