.class public Lorg/kustom/api/dashboard/model/DashboardEnvTab;
.super Lorg/kustom/api/dashboard/model/DashboardTab;
.source "DashboardEnvTab.java"


# instance fields
.field private final mEnv:Lorg/kustom/api/dashboard/config/KustomEnv;


# direct methods
.method public constructor <init>(Lorg/kustom/api/dashboard/config/KustomEnv;)V
    .locals 1
    .param p1, "env"    # Lorg/kustom/api/dashboard/config/KustomEnv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-virtual {p1}, Lorg/kustom/api/dashboard/config/KustomEnv;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kustom/api/dashboard/model/DashboardTab;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lorg/kustom/api/dashboard/model/DashboardEnvTab;->mEnv:Lorg/kustom/api/dashboard/config/KustomEnv;

    .line 16
    return-void
.end method


# virtual methods
.method public instantiatePage(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    new-instance v0, Lorg/kustom/api/dashboard/views/DashboardPageEnv;

    invoke-direct {v0, p1}, Lorg/kustom/api/dashboard/views/DashboardPageEnv;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "page":Lorg/kustom/api/dashboard/views/DashboardPageEnv;
    iget-object v1, p0, Lorg/kustom/api/dashboard/model/DashboardEnvTab;->mEnv:Lorg/kustom/api/dashboard/config/KustomEnv;

    invoke-virtual {v1, p1}, Lorg/kustom/api/dashboard/config/KustomEnv;->getFiles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/views/DashboardPageEnv;->setEntries([Ljava/lang/String;)V

    .line 22
    return-object v0
.end method
