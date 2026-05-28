.class public abstract Lorg/kustom/api/dashboard/views/DashboardPage;
.super Landroid/widget/FrameLayout;
.source "DashboardPage.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/listeners/OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Lcom/mikepenz/fastadapter/listeners/OnClickListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mScreenRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    .local p0, "this":Lorg/kustom/api/dashboard/views/DashboardPage;, "Lorg/kustom/api/dashboard/views/DashboardPage<TT;>;"
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 32
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/kustom/api/dashboard/views/DashboardPage;->mScreenRatio:F

    .line 33
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/views/DashboardPage;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/kustom/api/dashboard/R$layout;->kustom_dashboard_page:I

    invoke-static {v1, v2, p0}, Lorg/kustom/api/dashboard/views/DashboardPage;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    return-void
.end method

.method private getDefaultLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 6

    .prologue
    .line 76
    .local p0, "this":Lorg/kustom/api/dashboard/views/DashboardPage;, "Lorg/kustom/api/dashboard/views/DashboardPage<TT;>;"
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/views/DashboardPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/kustom/api/dashboard/DashboardSettings;->get(Landroid/content/Context;)Lorg/kustom/api/dashboard/DashboardSettings;

    move-result-object v4

    invoke-virtual {v4}, Lorg/kustom/api/dashboard/DashboardSettings;->useCompactView()Z

    move-result v0

    .line 77
    .local v0, "compact":Z
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/views/DashboardPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 78
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 79
    .local v2, "dpWidth":I
    new-instance v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    move v5, v4

    :goto_0
    if-eqz v0, :cond_1

    const/16 v4, 0x78

    :goto_1
    div-int v4, v2, v4

    .line 80
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 83
    .local v3, "layoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setGapStrategy(I)V

    .line 84
    return-object v3

    .line 79
    .end local v3    # "layoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    :cond_0
    const/4 v4, 0x2

    move v5, v4

    goto :goto_0

    :cond_1
    const/16 v4, 0xb4

    goto :goto_1
.end method


# virtual methods
.method protected final getScreenRatio()F
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lorg/kustom/api/dashboard/views/DashboardPage;, "Lorg/kustom/api/dashboard/views/DashboardPage<TT;>;"
    iget v0, p0, Lorg/kustom/api/dashboard/views/DashboardPage;->mScreenRatio:F

    return v0
.end method

.method final synthetic lambda$setEntries$0$DashboardPage(Ljava/util/List;)V
    .locals 4
    .param p1, "items"    # Ljava/util/List;

    .prologue
    .local p0, "this":Lorg/kustom/api/dashboard/views/DashboardPage;, "Lorg/kustom/api/dashboard/views/DashboardPage<TT;>;"
    const/16 v3, 0x8

    .line 48
    sget v2, Lorg/kustom/api/dashboard/R$id;->progress:I

    invoke-virtual {p0, v2}, Lorg/kustom/api/dashboard/views/DashboardPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    sget v2, Lorg/kustom/api/dashboard/R$id;->text:I

    invoke-virtual {p0, v2}, Lorg/kustom/api/dashboard/views/DashboardPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    sget v2, Lorg/kustom/api/dashboard/R$id;->list:I

    invoke-virtual {p0, v2}, Lorg/kustom/api/dashboard/views/DashboardPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 51
    .local v1, "list":Landroid/support/v7/widget/RecyclerView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 52
    new-instance v0, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;-><init>()V

    .line 53
    .local v0, "adapter":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TT;>;"
    invoke-direct {p0}, Lorg/kustom/api/dashboard/views/DashboardPage;->getDefaultLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 54
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 55
    invoke-virtual {v0, p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->withOnClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 56
    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;

    .line 57
    return-void
.end method

.method final synthetic lambda$setText$1$DashboardPage(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/kustom/api/dashboard/views/DashboardPage;, "Lorg/kustom/api/dashboard/views/DashboardPage<TT;>;"
    const/16 v2, 0x8

    .line 64
    sget v0, Lorg/kustom/api/dashboard/R$id;->list:I

    invoke-virtual {p0, v0}, Lorg/kustom/api/dashboard/views/DashboardPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    sget v0, Lorg/kustom/api/dashboard/R$id;->text:I

    invoke-virtual {p0, v0}, Lorg/kustom/api/dashboard/views/DashboardPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    sget v0, Lorg/kustom/api/dashboard/R$id;->progress:I

    invoke-virtual {p0, v0}, Lorg/kustom/api/dashboard/views/DashboardPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    sget v0, Lorg/kustom/api/dashboard/R$id;->text:I

    invoke-virtual {p0, v0}, Lorg/kustom/api/dashboard/views/DashboardPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/mikepenz/fastadapter/IAdapter",
            "<TT;>;TT;I)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/kustom/api/dashboard/views/DashboardPage;, "Lorg/kustom/api/dashboard/views/DashboardPage<TT;>;"
    .local p2, "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "Lcom/mikepenz/fastadapter/IAdapter<TT;>;"
    .local p3, "item":Lcom/mikepenz/fastadapter/IItem;, "TT;"
    invoke-virtual {p0, p3}, Lorg/kustom/api/dashboard/views/DashboardPage;->onClick(Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v0

    return v0
.end method

.method protected abstract onClick(Lcom/mikepenz/fastadapter/IItem;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method protected setEntries(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/kustom/api/dashboard/views/DashboardPage;, "Lorg/kustom/api/dashboard/views/DashboardPage<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "No Results"

    invoke-virtual {p0, v1}, Lorg/kustom/api/dashboard/views/DashboardPage;->setText(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$0;

    invoke-direct {v1, p0, p1}, Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$0;-><init>(Lorg/kustom/api/dashboard/views/DashboardPage;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 62
    .local p0, "this":Lorg/kustom/api/dashboard/views/DashboardPage;, "Lorg/kustom/api/dashboard/views/DashboardPage<TT;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$1;

    invoke-direct {v1, p0, p1}, Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$1;-><init>(Lorg/kustom/api/dashboard/views/DashboardPage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
