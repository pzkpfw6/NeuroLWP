.class public Lorg/kustom/api/dashboard/views/DashboardPageImages;
.super Lorg/kustom/api/dashboard/views/DashboardPage;
.source "DashboardPageImages.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/kustom/api/dashboard/views/DashboardPage",
        "<",
        "Lorg/kustom/api/dashboard/model/DashboardImageItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/kustom/api/dashboard/views/DashboardPage;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 31
    invoke-static {p1}, Lorg/kustom/api/dashboard/utils/OkHttpUtils;->getCacheDirectory(Landroid/content/Context;)Lokhttp3/Cache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/api/dashboard/views/DashboardPageImages;->mHttpClient:Lokhttp3/OkHttpClient;

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic onClick(Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lorg/kustom/api/dashboard/model/DashboardImageItem;

    invoke-virtual {p0, p1}, Lorg/kustom/api/dashboard/views/DashboardPageImages;->onClick(Lorg/kustom/api/dashboard/model/DashboardImageItem;)Z

    move-result v0

    return v0
.end method

.method public onClick(Lorg/kustom/api/dashboard/model/DashboardImageItem;)Z
    .locals 3
    .param p1, "item"    # Lorg/kustom/api/dashboard/model/DashboardImageItem;

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/kustom/api/dashboard/views/DashboardPageImages;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/kustom/api/dashboard/ImagePreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.kustom.api.dashboard.EXTRA_IMAGE_DATA"

    invoke-virtual {p1}, Lorg/kustom/api/dashboard/model/DashboardImageItem;->getImageData()Lorg/kustom/api/dashboard/model/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/kustom/api/dashboard/model/ImageData;->getJsonData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/views/DashboardPageImages;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    const/4 v1, 0x0

    return v1
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 37
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lorg/kustom/api/dashboard/views/DashboardPageImages;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lorg/kustom/api/dashboard/views/DashboardPageImages$1;

    invoke-direct {v2, p0}, Lorg/kustom/api/dashboard/views/DashboardPageImages$1;-><init>(Lorg/kustom/api/dashboard/views/DashboardPageImages;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 69
    return-void
.end method
