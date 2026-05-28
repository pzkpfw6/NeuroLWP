.class public Lorg/kustom/api/dashboard/DashboardSettings;
.super Ljava/lang/Object;
.source "DashboardSettings.java"


# static fields
.field private static final PREF_COMPACT:Ljava/lang/String; = "compact"

.field private static final PREF_LAST_PAGE:Ljava/lang/String; = "last_page"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/kustom/api/dashboard/DashboardSettings;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/kustom/api/dashboard/DashboardSettings;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v0, Lorg/kustom/api/dashboard/DashboardSettings;

    invoke-direct {v0, p0}, Lorg/kustom/api/dashboard/DashboardSettings;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getBoolean(I)Z
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 70
    iget-object v0, p0, Lorg/kustom/api/dashboard/DashboardSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lorg/kustom/api/dashboard/DashboardSettings;->mContext:Landroid/content/Context;

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 74
    iget-object v0, p0, Lorg/kustom/api/dashboard/DashboardSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dashboardTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget v0, Lorg/kustom/api/dashboard/R$string;->kustom_dashboard_title:I

    invoke-direct {p0, v0}, Lorg/kustom/api/dashboard/DashboardSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dynamicItemsColors()Z
    .locals 1

    .prologue
    .line 47
    sget v0, Lorg/kustom/api/dashboard/R$bool;->kustom_dashboard_adaptive_item_color:I

    invoke-direct {p0, v0}, Lorg/kustom/api/dashboard/DashboardSettings;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getLastPageIndex()I
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/kustom/api/dashboard/DashboardSettings;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_page"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setCompactView(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/kustom/api/dashboard/DashboardSettings;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "compact"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    return-void
.end method

.method public setLastPageIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/kustom/api/dashboard/DashboardSettings;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_page"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    return-void
.end method

.method public useCompactView()Z
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/kustom/api/dashboard/DashboardSettings;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "compact"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "compact"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 54
    :goto_0
    return v1

    :cond_0
    sget v1, Lorg/kustom/api/dashboard/R$bool;->kustom_dashboard_compact_view:I

    invoke-direct {p0, v1}, Lorg/kustom/api/dashboard/DashboardSettings;->getBoolean(I)Z

    move-result v1

    goto :goto_0
.end method

.method public wallsDownloadDirectory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    iget-object v2, p0, Lorg/kustom/api/dashboard/DashboardSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 34
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 35
    .local v1, "stringId":I
    if-nez v1, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/kustom/api/dashboard/DashboardSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public wallsDownloadEnabled()Z
    .locals 1

    .prologue
    .line 29
    sget v0, Lorg/kustom/api/dashboard/R$bool;->kustom_dashboard_walls_download:I

    invoke-direct {p0, v0}, Lorg/kustom/api/dashboard/DashboardSettings;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public wallsEnabled()Z
    .locals 1

    .prologue
    .line 25
    sget v0, Lorg/kustom/api/dashboard/R$bool;->kustom_dashboard_walls:I

    invoke-direct {p0, v0}, Lorg/kustom/api/dashboard/DashboardSettings;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public wallsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget v0, Lorg/kustom/api/dashboard/R$string;->kustom_dashboard_walls_url:I

    invoke-direct {p0, v0}, Lorg/kustom/api/dashboard/DashboardSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
