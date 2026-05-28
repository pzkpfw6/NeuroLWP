.class public Lorg/kustom/api/dashboard/views/DashboardPageEnv;
.super Lorg/kustom/api/dashboard/views/DashboardPage;
.source "DashboardPageEnv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/kustom/api/dashboard/views/DashboardPage",
        "<",
        "Lorg/kustom/api/dashboard/model/DashboardPresetItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/kustom/api/dashboard/views/DashboardPage;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected bridge synthetic onClick(Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lorg/kustom/api/dashboard/model/DashboardPresetItem;

    invoke-virtual {p0, p1}, Lorg/kustom/api/dashboard/views/DashboardPageEnv;->onClick(Lorg/kustom/api/dashboard/model/DashboardPresetItem;)Z

    move-result v0

    return v0
.end method

.method protected onClick(Lorg/kustom/api/dashboard/model/DashboardPresetItem;)Z
    .locals 10
    .param p1, "item"    # Lorg/kustom/api/dashboard/model/DashboardPresetItem;

    .prologue
    const/4 v9, 0x1

    .line 33
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/views/DashboardPageEnv;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->getPresetFile()Lorg/kustom/api/preset/PresetFile;

    move-result-object v4

    invoke-virtual {v4}, Lorg/kustom/api/preset/PresetFile;->getExt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/kustom/api/dashboard/config/KustomConfig;->getEnv(Ljava/lang/String;)Lorg/kustom/api/dashboard/config/KustomEnv;

    move-result-object v1

    .line 35
    .local v1, "env":Lorg/kustom/api/dashboard/config/KustomEnv;
    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid env"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 36
    :cond_0
    invoke-virtual {v1}, Lorg/kustom/api/dashboard/config/KustomEnv;->getPkg()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "pkg":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 39
    invoke-static {v0, v3}, Lorg/kustom/api/dashboard/utils/PackageHelper;->packageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 40
    invoke-static {v0, v3}, Lorg/kustom/api/dashboard/utils/Dialogs;->showAppNotInstalledDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    :goto_0
    return v9

    .line 42
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v2, "i":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v1}, Lorg/kustom/api/dashboard/config/KustomEnv;->getEditorActivity()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 44
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "kfile"

    .line 45
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "%s.kustom.provider"

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 47
    invoke-virtual {p1}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->getPresetFile()Lorg/kustom/api/preset/PresetFile;

    move-result-object v5

    invoke-virtual {v5}, Lorg/kustom/api/preset/PresetFile;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 44
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 49
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    .end local v2    # "i":Landroid/content/Intent;
    :cond_2
    invoke-static {v0}, Lorg/kustom/api/dashboard/utils/Dialogs;->showOpenKomponentDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setEntries([Ljava/lang/String;)V
    .locals 7
    .param p1, "entries"    # [Ljava/lang/String;

    .prologue
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/kustom/api/dashboard/model/DashboardPresetItem;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 27
    .local v0, "entry":Ljava/lang/String;
    new-instance v4, Lorg/kustom/api/dashboard/model/DashboardPresetItem;

    new-instance v5, Lorg/kustom/api/preset/AssetPresetFile;

    invoke-direct {v5, v0}, Lorg/kustom/api/preset/AssetPresetFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/kustom/api/dashboard/views/DashboardPageEnv;->getScreenRatio()F

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;-><init>(Lorg/kustom/api/preset/PresetFile;F)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "entry":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lorg/kustom/api/dashboard/views/DashboardPageEnv;->setEntries(Ljava/util/List;)V

    .line 29
    return-void
.end method
