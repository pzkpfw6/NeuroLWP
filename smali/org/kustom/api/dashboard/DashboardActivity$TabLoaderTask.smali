.class Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;
.super Landroid/os/AsyncTask;
.source "DashboardActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kustom/api/dashboard/DashboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lorg/kustom/api/dashboard/model/DashboardTab;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultPage:I

.field final synthetic this$0:Lorg/kustom/api/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lorg/kustom/api/dashboard/DashboardActivity;I)V
    .locals 0
    .param p2, "defaultPage"    # I

    .prologue
    .line 100
    iput-object p1, p0, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->this$0:Lorg/kustom/api/dashboard/DashboardActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 101
    iput p2, p0, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->mDefaultPage:I

    .line 102
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->doInBackground([Ljava/lang/Void;)[Lorg/kustom/api/dashboard/model/DashboardTab;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Lorg/kustom/api/dashboard/model/DashboardTab;
    .locals 7
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v1, "envs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/kustom/api/dashboard/model/DashboardTab;>;"
    iget-object v5, p0, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->this$0:Lorg/kustom/api/dashboard/DashboardActivity;

    invoke-static {v5}, Lorg/kustom/api/dashboard/DashboardSettings;->get(Landroid/content/Context;)Lorg/kustom/api/dashboard/DashboardSettings;

    move-result-object v3

    .line 108
    .local v3, "settings":Lorg/kustom/api/dashboard/DashboardSettings;
    invoke-static {}, Lorg/kustom/api/dashboard/config/KustomConfig;->getExtensions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, "ext":Ljava/lang/String;
    invoke-static {v2}, Lorg/kustom/api/dashboard/config/KustomConfig;->getEnv(Ljava/lang/String;)Lorg/kustom/api/dashboard/config/KustomEnv;

    move-result-object v0

    .line 110
    .local v0, "env":Lorg/kustom/api/dashboard/config/KustomEnv;
    if-eqz v0, :cond_0

    .line 111
    iget-object v6, p0, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->this$0:Lorg/kustom/api/dashboard/DashboardActivity;

    invoke-virtual {v0, v6}, Lorg/kustom/api/dashboard/config/KustomEnv;->getFiles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_0

    .line 112
    new-instance v6, Lorg/kustom/api/dashboard/model/DashboardEnvTab;

    invoke-direct {v6, v0}, Lorg/kustom/api/dashboard/model/DashboardEnvTab;-><init>(Lorg/kustom/api/dashboard/config/KustomEnv;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v0    # "env":Lorg/kustom/api/dashboard/config/KustomEnv;
    .end local v2    # "ext":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lorg/kustom/api/dashboard/DashboardSettings;->wallsEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    invoke-virtual {v3}, Lorg/kustom/api/dashboard/DashboardSettings;->wallsUrl()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 119
    new-instance v5, Lorg/kustom/api/dashboard/model/DashboardImagesTab;

    const-string v6, "WALLS"

    invoke-direct {v5, v6, v4}, Lorg/kustom/api/dashboard/model/DashboardImagesTab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v4    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lorg/kustom/api/dashboard/model/DashboardTab;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/kustom/api/dashboard/model/DashboardTab;

    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, [Lorg/kustom/api/dashboard/model/DashboardTab;

    invoke-virtual {p0, p1}, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->onPostExecute([Lorg/kustom/api/dashboard/model/DashboardTab;)V

    return-void
.end method

.method protected onPostExecute([Lorg/kustom/api/dashboard/model/DashboardTab;)V
    .locals 5
    .param p1, "tabs"    # [Lorg/kustom/api/dashboard/model/DashboardTab;

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 128
    iget-object v2, p0, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->this$0:Lorg/kustom/api/dashboard/DashboardActivity;

    sget v4, Lorg/kustom/api/dashboard/R$id;->pager:I

    invoke-virtual {v2, v4}, Lorg/kustom/api/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 129
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    new-instance v2, Lorg/kustom/api/dashboard/DashboardActivity$KustomEnvPagerAdapter;

    iget-object v4, p0, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->this$0:Lorg/kustom/api/dashboard/DashboardActivity;

    invoke-direct {v2, v4, p1}, Lorg/kustom/api/dashboard/DashboardActivity$KustomEnvPagerAdapter;-><init>(Lorg/kustom/api/dashboard/DashboardActivity;[Lorg/kustom/api/dashboard/model/DashboardTab;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 130
    iget-object v2, p0, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->this$0:Lorg/kustom/api/dashboard/DashboardActivity;

    sget v4, Lorg/kustom/api/dashboard/R$id;->tabs:I

    invoke-virtual {v2, v4}, Lorg/kustom/api/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/astuetz/PagerSlidingTabStrip;

    .line 131
    .local v1, "strip":Lcom/astuetz/PagerSlidingTabStrip;
    invoke-virtual {v1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 132
    array-length v2, p1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->this$0:Lorg/kustom/api/dashboard/DashboardActivity;

    invoke-virtual {v2}, Lorg/kustom/api/dashboard/DashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p1, v2

    instance-of v2, v2, Lorg/kustom/api/dashboard/model/DashboardImagesTab;

    if-eqz v2, :cond_1

    const-string v2, "android.intent.action.SET_WALLPAPER"

    iget-object v4, p0, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->this$0:Lorg/kustom/api/dashboard/DashboardActivity;

    .line 135
    invoke-virtual {v4}, Lorg/kustom/api/dashboard/DashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 138
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 132
    goto :goto_0

    .line 137
    :cond_1
    iget v2, p0, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->mDefaultPage:I

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1
.end method
