.class Lorg/kustom/api/dashboard/DashboardActivity$KustomEnvPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DashboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kustom/api/dashboard/DashboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KustomEnvPagerAdapter"
.end annotation


# instance fields
.field private final mTabs:[Lorg/kustom/api/dashboard/model/DashboardTab;

.field final synthetic this$0:Lorg/kustom/api/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lorg/kustom/api/dashboard/DashboardActivity;[Lorg/kustom/api/dashboard/model/DashboardTab;)V
    .locals 0
    .param p2, "tabs"    # [Lorg/kustom/api/dashboard/model/DashboardTab;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/kustom/api/dashboard/DashboardActivity$KustomEnvPagerAdapter;->this$0:Lorg/kustom/api/dashboard/DashboardActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 145
    iput-object p2, p0, Lorg/kustom/api/dashboard/DashboardActivity$KustomEnvPagerAdapter;->mTabs:[Lorg/kustom/api/dashboard/model/DashboardTab;

    .line 146
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 158
    check-cast p3, Lorg/kustom/api/dashboard/views/DashboardPage;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/kustom/api/dashboard/DashboardActivity$KustomEnvPagerAdapter;->mTabs:[Lorg/kustom/api/dashboard/model/DashboardTab;

    array-length v0, v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lorg/kustom/api/dashboard/DashboardActivity$KustomEnvPagerAdapter;->mTabs:[Lorg/kustom/api/dashboard/model/DashboardTab;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/kustom/api/dashboard/model/DashboardTab;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pos"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 151
    iget-object v1, p0, Lorg/kustom/api/dashboard/DashboardActivity$KustomEnvPagerAdapter;->mTabs:[Lorg/kustom/api/dashboard/model/DashboardTab;

    aget-object v1, v1, p2

    iget-object v2, p0, Lorg/kustom/api/dashboard/DashboardActivity$KustomEnvPagerAdapter;->this$0:Lorg/kustom/api/dashboard/DashboardActivity;

    invoke-virtual {v1, v2}, Lorg/kustom/api/dashboard/model/DashboardTab;->instantiatePage(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "page":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 153
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
