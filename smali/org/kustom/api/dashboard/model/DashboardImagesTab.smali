.class public Lorg/kustom/api/dashboard/model/DashboardImagesTab;
.super Lorg/kustom/api/dashboard/model/DashboardTab;
.source "DashboardImagesTab.java"


# instance fields
.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lorg/kustom/api/dashboard/model/DashboardTab;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p2, p0, Lorg/kustom/api/dashboard/model/DashboardImagesTab;->mUrl:Ljava/lang/String;

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
    new-instance v0, Lorg/kustom/api/dashboard/views/DashboardPageImages;

    invoke-direct {v0, p1}, Lorg/kustom/api/dashboard/views/DashboardPageImages;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "page":Lorg/kustom/api/dashboard/views/DashboardPageImages;
    iget-object v1, p0, Lorg/kustom/api/dashboard/model/DashboardImagesTab;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/views/DashboardPageImages;->setUrl(Ljava/lang/String;)V

    .line 22
    return-object v0
.end method
