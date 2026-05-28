.class public Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DashboardItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kustom/api/dashboard/model/DashboardItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mAuthor:Landroid/widget/TextView;

.field protected final mBackground:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

.field private final mInfo:Landroid/view/View;

.field protected final mPreview:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    sget v0, Lorg/kustom/api/dashboard/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 82
    sget v0, Lorg/kustom/api/dashboard/R$id;->author:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mAuthor:Landroid/widget/TextView;

    .line 83
    sget v0, Lorg/kustom/api/dashboard/R$id;->preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    iput-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mPreview:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    .line 84
    sget v0, Lorg/kustom/api/dashboard/R$id;->info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mInfo:Landroid/view/View;

    .line 85
    sget v0, Lorg/kustom/api/dashboard/R$id;->background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    iput-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mBackground:Lorg/kustom/api/dashboard/views/AspectRatioImageView;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mInfo:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method final synthetic lambda$onBitmapSet$0$DashboardItem$ViewHolder(Landroid/support/v7/graphics/Palette;)V
    .locals 3
    .param p1, "palette"    # Landroid/support/v7/graphics/Palette;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 93
    .local v0, "muted":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mInfo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    iget-object v1, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getBodyTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v1, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getTitleTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_0
    return-void
.end method

.method final onBitmapSet(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "ignorePalette"    # Z

    .prologue
    .line 89
    iget-object v1, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    .local v0, "context":Landroid/content/Context;
    if-nez p2, :cond_0

    invoke-static {v0}, Lorg/kustom/api/dashboard/DashboardSettings;->get(Landroid/content/Context;)Lorg/kustom/api/dashboard/DashboardSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/kustom/api/dashboard/DashboardSettings;->dynamicItemsColors()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {p1}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v1

    new-instance v2, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder$$Lambda$0;

    invoke-direct {v2, p0}, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder$$Lambda$0;-><init>(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    .line 100
    :cond_0
    return-void
.end method

.method final setAuthor(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method
