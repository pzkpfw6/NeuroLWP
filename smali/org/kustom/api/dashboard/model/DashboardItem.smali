.class public abstract Lorg/kustom/api/dashboard/model/DashboardItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "DashboardItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ":",
        "Lcom/mikepenz/fastadapter/IClickable;",
        ">",
        "Lcom/mikepenz/fastadapter/items/AbstractItem",
        "<TItem;",
        "Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mScreenRatio:F


# direct methods
.method constructor <init>(F)V
    .locals 0
    .param p1, "screenRatio"    # F

    .prologue
    .line 26
    .local p0, "this":Lorg/kustom/api/dashboard/model/DashboardItem;, "Lorg/kustom/api/dashboard/model/DashboardItem<TItem;>;"
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    .line 27
    iput p1, p0, Lorg/kustom/api/dashboard/model/DashboardItem;->mScreenRatio:F

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lorg/kustom/api/dashboard/model/DashboardItem;, "Lorg/kustom/api/dashboard/model/DashboardItem<TItem;>;"
    check-cast p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/kustom/api/dashboard/model/DashboardItem;->bindView(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;Ljava/util/List;)V
    .locals 3
    .param p1, "holder"    # Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

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
    .local p0, "this":Lorg/kustom/api/dashboard/model/DashboardItem;, "Lorg/kustom/api/dashboard/model/DashboardItem<TItem;>;"
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Lcom/mikepenz/fastadapter/items/AbstractItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 44
    iget-object v1, p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/kustom/api/dashboard/model/DashboardItem;->getImageViewPadding(Landroid/content/Context;)F

    move-result v1

    float-to-int v0, v1

    .line 45
    .local v0, "padding":I
    invoke-static {p1}, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->access$000(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lorg/kustom/api/dashboard/model/DashboardItem;->hasTranslucentInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 46
    iget-object v1, p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mPreview:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->setPadding(IIII)V

    .line 47
    iget-object v1, p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mPreview:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    invoke-virtual {p0}, Lorg/kustom/api/dashboard/model/DashboardItem;->getImageViewRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->setAspectRatio(F)V

    .line 48
    iget-object v1, p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mPreview:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    invoke-virtual {p0}, Lorg/kustom/api/dashboard/model/DashboardItem;->getImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    return-void

    .line 45
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method getImageScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lorg/kustom/api/dashboard/model/DashboardItem;, "Lorg/kustom/api/dashboard/model/DashboardItem<TItem;>;"
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method getImageViewPadding(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    .local p0, "this":Lorg/kustom/api/dashboard/model/DashboardItem;, "Lorg/kustom/api/dashboard/model/DashboardItem<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method getImageViewRatio()F
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lorg/kustom/api/dashboard/model/DashboardItem;, "Lorg/kustom/api/dashboard/model/DashboardItem<TItem;>;"
    iget v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem;->mScreenRatio:F

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/kustom/api/dashboard/model/DashboardItem;, "Lorg/kustom/api/dashboard/model/DashboardItem<TItem;>;"
    sget v0, Lorg/kustom/api/dashboard/R$id;->kustom_dashboard_id_item:I

    return v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lorg/kustom/api/dashboard/model/DashboardItem;, "Lorg/kustom/api/dashboard/model/DashboardItem<TItem;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/api/dashboard/model/DashboardItem;->getViewHolder(Landroid/view/View;)Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public final getViewHolder(Landroid/view/View;)Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    .local p0, "this":Lorg/kustom/api/dashboard/model/DashboardItem;, "Lorg/kustom/api/dashboard/model/DashboardItem<TItem;>;"
    new-instance v0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    invoke-direct {v0, p1}, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method hasTranslucentInfo()Z
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lorg/kustom/api/dashboard/model/DashboardItem;, "Lorg/kustom/api/dashboard/model/DashboardItem<TItem;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isLandscape()Z
    .locals 2

    .prologue
    .line 60
    .local p0, "this":Lorg/kustom/api/dashboard/model/DashboardItem;, "Lorg/kustom/api/dashboard/model/DashboardItem<TItem;>;"
    iget v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem;->mScreenRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
