.class public Lorg/kustom/api/dashboard/DashboardActivity;
.super Landroid/app/Activity;
.source "DashboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kustom/api/dashboard/DashboardActivity$KustomEnvPagerAdapter;,
        Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/kustom/api/dashboard/DashboardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/kustom/api/dashboard/DashboardActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getCurrentPageIndex()I
    .locals 2

    .prologue
    .line 92
    sget v1, Lorg/kustom/api/dashboard/R$id;->pager:I

    invoke-virtual {p0, v1}, Lorg/kustom/api/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 93
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    sget-object v1, Lorg/kustom/api/dashboard/DashboardActivity;->TAG:Ljava/lang/String;

    const-string v2, "Dashboard starting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p0}, Lorg/kustom/api/dashboard/utils/ThemeHelper;->getThemeResource(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/kustom/api/dashboard/DashboardActivity;->setTheme(I)V

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v1, Lorg/kustom/api/dashboard/R$layout;->kustom_dashboard_activity:I

    invoke-virtual {p0, v1}, Lorg/kustom/api/dashboard/DashboardActivity;->setContentView(I)V

    .line 46
    sget v1, Lorg/kustom/api/dashboard/R$id;->toolbar:I

    invoke-virtual {p0, v1}, Lorg/kustom/api/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 47
    .local v0, "toolbar":Landroid/widget/Toolbar;
    invoke-static {p0}, Lorg/kustom/api/dashboard/DashboardSettings;->get(Landroid/content/Context;)Lorg/kustom/api/dashboard/DashboardSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/kustom/api/dashboard/DashboardSettings;->dashboardTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0, v0}, Lorg/kustom/api/dashboard/DashboardActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 51
    new-instance v1, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;

    invoke-static {p0}, Lorg/kustom/api/dashboard/DashboardSettings;->get(Landroid/content/Context;)Lorg/kustom/api/dashboard/DashboardSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/kustom/api/dashboard/DashboardSettings;->getLastPageIndex()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;-><init>(Lorg/kustom/api/dashboard/DashboardActivity;I)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/DashboardActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 57
    .local v2, "inflater":Landroid/view/MenuInflater;
    sget v3, Lorg/kustom/api/dashboard/R$menu;->dashboard:I

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 59
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 60
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 62
    const v3, 0x1010036

    .line 63
    invoke-static {p0, v3}, Lorg/kustom/api/dashboard/utils/ThemeHelper;->getThemeColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 62
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lorg/kustom/api/dashboard/R$id;->menu_info:I

    if-ne v3, v4, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/DashboardActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/kustom/api/dashboard/utils/Dialogs;->showInfoDialog(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 81
    :goto_0
    return v1

    .line 76
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lorg/kustom/api/dashboard/R$id;->menu_compact:I

    if-ne v3, v4, :cond_1

    .line 77
    invoke-static {p0}, Lorg/kustom/api/dashboard/DashboardSettings;->get(Landroid/content/Context;)Lorg/kustom/api/dashboard/DashboardSettings;

    move-result-object v0

    .line 78
    .local v0, "settings":Lorg/kustom/api/dashboard/DashboardSettings;
    invoke-virtual {v0}, Lorg/kustom/api/dashboard/DashboardSettings;->useCompactView()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/DashboardSettings;->setCompactView(Z)V

    .line 79
    new-instance v1, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;

    invoke-direct {p0}, Lorg/kustom/api/dashboard/DashboardActivity;->getCurrentPageIndex()I

    move-result v3

    invoke-direct {v1, p0, v3}, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;-><init>(Lorg/kustom/api/dashboard/DashboardActivity;I)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/kustom/api/dashboard/DashboardActivity$TabLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    .end local v0    # "settings":Lorg/kustom/api/dashboard/DashboardSettings;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .restart local v0    # "settings":Lorg/kustom/api/dashboard/DashboardSettings;
    :cond_2
    move v1, v2

    .line 78
    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 87
    invoke-static {p0}, Lorg/kustom/api/dashboard/DashboardSettings;->get(Landroid/content/Context;)Lorg/kustom/api/dashboard/DashboardSettings;

    move-result-object v0

    invoke-direct {p0}, Lorg/kustom/api/dashboard/DashboardActivity;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/DashboardSettings;->setLastPageIndex(I)V

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    return-void
.end method
