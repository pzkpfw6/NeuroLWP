.class public Lorg/kustom/api/dashboard/model/DashboardPresetItem;
.super Lorg/kustom/api/dashboard/model/DashboardItem;
.source "DashboardPresetItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/kustom/api/dashboard/model/DashboardItem",
        "<",
        "Lorg/kustom/api/dashboard/model/DashboardPresetItem;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/kustom/api/dashboard/model/DashboardPresetItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPresetFile:Lorg/kustom/api/preset/PresetFile;

.field private final mUseWidgetLayout:Z


# direct methods
.method public constructor <init>(Lorg/kustom/api/preset/PresetFile;F)V
    .locals 2
    .param p1, "presetFile"    # Lorg/kustom/api/preset/PresetFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "screenRatio"    # F

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lorg/kustom/api/dashboard/model/DashboardItem;-><init>(F)V

    .line 33
    iput-object p1, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->mPresetFile:Lorg/kustom/api/preset/PresetFile;

    .line 34
    sget-object v0, Lorg/kustom/api/dashboard/config/KustomConfig;->ENV_KWGT:Lorg/kustom/api/dashboard/config/KustomEnv;

    invoke-virtual {v0}, Lorg/kustom/api/dashboard/config/KustomEnv;->getExtension()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->mPresetFile:Lorg/kustom/api/preset/PresetFile;

    invoke-virtual {v1}, Lorg/kustom/api/preset/PresetFile;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/kustom/api/dashboard/config/KustomConfig;->ENV_KOMP:Lorg/kustom/api/dashboard/config/KustomEnv;

    .line 35
    invoke-virtual {v0}, Lorg/kustom/api/dashboard/config/KustomEnv;->getExtension()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->mPresetFile:Lorg/kustom/api/preset/PresetFile;

    invoke-virtual {v1}, Lorg/kustom/api/preset/PresetFile;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->mUseWidgetLayout:Z

    .line 36
    return-void

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/kustom/api/dashboard/model/DashboardPresetItem;)Z
    .locals 1
    .param p0, "x0"    # Lorg/kustom/api/dashboard/model/DashboardPresetItem;

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->useWidgetLayout()Z

    move-result v0

    return v0
.end method

.method static final synthetic lambda$bindView$0$DashboardPresetItem(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;Lorg/kustom/api/preset/PresetInfo;)V
    .locals 1
    .param p0, "holder"    # Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;
    .param p1, "info"    # Lorg/kustom/api/preset/PresetInfo;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Lorg/kustom/api/preset/PresetInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->setTitle(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lorg/kustom/api/preset/PresetInfo;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->setAuthor(Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method static final synthetic lambda$bindView$1$DashboardPresetItem(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "holder"    # Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mBackground:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    invoke-virtual {v0, p1}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mBackground:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->setVisibility(I)V

    .line 108
    return-void
.end method

.method private useWidgetLayout()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->mUseWidgetLayout:Z

    return v0
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->bindView(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;Ljava/util/List;)V

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
    .line 81
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Lorg/kustom/api/dashboard/model/DashboardItem;->bindView(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;Ljava/util/List;)V

    .line 82
    iget-object v1, p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->mPresetFile:Lorg/kustom/api/preset/PresetFile;

    invoke-virtual {v1}, Lorg/kustom/api/preset/PresetFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->setTitle(Ljava/lang/String;)V

    .line 84
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->mPresetFile:Lorg/kustom/api/preset/PresetFile;

    .line 86
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget-object v2, Lorg/kustom/api/preset/glide/PresetFileModelLoader;->ORIENTATION_LAND:Lcom/bumptech/glide/load/Option;

    .line 87
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->isLandscape()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lorg/kustom/api/dashboard/model/DashboardPresetItem$1;

    iget-object v3, p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mPreview:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    invoke-direct {v2, p0, v3, p1}, Lorg/kustom/api/dashboard/model/DashboardPresetItem$1;-><init>(Lorg/kustom/api/dashboard/model/DashboardPresetItem;Landroid/widget/ImageView;Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;)V

    .line 88
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 95
    iget-object v1, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->mPresetFile:Lorg/kustom/api/preset/PresetFile;

    invoke-static {v1}, Lorg/kustom/api/preset/PresetInfoLoader;->create(Lorg/kustom/api/preset/PresetFile;)Lorg/kustom/api/preset/PresetInfoLoader;

    move-result-object v1

    new-instance v2, Lorg/kustom/api/dashboard/model/DashboardPresetItem$$Lambda$0;

    invoke-direct {v2, p1}, Lorg/kustom/api/dashboard/model/DashboardPresetItem$$Lambda$0;-><init>(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;)V

    .line 96
    invoke-virtual {v1, v0, v2}, Lorg/kustom/api/preset/PresetInfoLoader;->load(Landroid/content/Context;Lorg/kustom/api/preset/PresetInfoLoader$Callback;)V

    .line 102
    invoke-direct {p0}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->useWidgetLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {}, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;->create()Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;

    move-result-object v1

    new-instance v2, Lorg/kustom/api/dashboard/model/DashboardPresetItem$$Lambda$1;

    invoke-direct {v2, p1}, Lorg/kustom/api/dashboard/model/DashboardPresetItem$$Lambda$1;-><init>(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;)V

    .line 104
    invoke-virtual {v1, v0, v2}, Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader;->load(Landroid/content/Context;Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mBackground:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    iget-object v1, p1, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mBackground:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    check-cast p1, Lorg/kustom/api/dashboard/model/DashboardPresetItem;

    invoke-virtual {p0, p1}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->compareTo(Lorg/kustom/api/dashboard/model/DashboardPresetItem;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/kustom/api/dashboard/model/DashboardPresetItem;)I
    .locals 2
    .param p1, "o"    # Lorg/kustom/api/dashboard/model/DashboardPresetItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->mPresetFile:Lorg/kustom/api/preset/PresetFile;

    invoke-virtual {v0}, Lorg/kustom/api/preset/PresetFile;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->mPresetFile:Lorg/kustom/api/preset/PresetFile;

    invoke-virtual {v1}, Lorg/kustom/api/preset/PresetFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getImageScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->useWidgetLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/kustom/api/dashboard/model/DashboardItem;->getImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    goto :goto_0
.end method

.method getImageViewPadding(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->useWidgetLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0, p1}, Lorg/kustom/api/dashboard/utils/ScreenUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getImageViewRatio()F
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->useWidgetLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/kustom/api/dashboard/model/DashboardItem;->getImageViewRatio()F

    move-result v0

    goto :goto_0
.end method

.method public final getLayoutRes()I
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->useWidgetLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/kustom/api/dashboard/R$layout;->kustom_dashboard_list_item_widget:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lorg/kustom/api/dashboard/R$layout;->kustom_dashboard_list_item_wallpaper:I

    goto :goto_0
.end method

.method public getPresetFile()Lorg/kustom/api/preset/PresetFile;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->mPresetFile:Lorg/kustom/api/preset/PresetFile;

    return-object v0
.end method

.method hasTranslucentInfo()Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->useWidgetLayout()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
