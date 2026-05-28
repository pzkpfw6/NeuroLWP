.class public Lorg/kustom/skin/dashboard/glide/GlideRequests;
.super Lcom/bumptech/glide/RequestManager;
.source "GlideRequests.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .locals 0
    .param p1, "glide"    # Lcom/bumptech/glide/Glide;
    .param p2, "lifecycle"    # Lcom/bumptech/glide/manager/Lifecycle;
    .param p3, "treeNode"    # Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideRequests;

    move-result-object v0

    return-object v0
.end method

.method public applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideRequests;
    .locals 1
    .param p1, "arg0"    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequests;

    return-object v0
.end method

.method public bridge synthetic as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->as(Ljava/lang/Class;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public as(Ljava/lang/Class;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TResourceType;>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TResourceType;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequests;->glide:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lorg/kustom/skin/dashboard/glide/GlideRequests;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lorg/kustom/skin/dashboard/glide/GlideRequest;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic asBitmap()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->asBitmap()Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asBitmap()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asDrawable()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->asDrawable()Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asDrawable()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asFile()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->asFile()Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asFile()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asFile()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asGif()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->asGif()Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asGif()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->download(Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic downloadOnly()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->downloadOnly()Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public downloadOnly()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Landroid/graphics/Bitmap;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Landroid/net/Uri;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Ljava/io/File;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Ljava/lang/Integer;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Ljava/lang/String;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Ljava/net/URL;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load([B)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Landroid/graphics/Bitmap;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Landroid/net/Uri;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Ljava/io/File;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Ljava/lang/Integer;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Ljava/lang/String;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load(Ljava/net/URL;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 1
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->load([B)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/graphics/Bitmap;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public load(Ljava/io/File;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "arg0"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public load(Ljava/lang/Integer;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public load(Ljava/lang/String;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public load(Ljava/net/URL;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "arg0"    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public load([B)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "arg0"    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequests;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideRequests;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideRequests;
    .locals 1
    .param p1, "arg0"    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequests;

    return-object v0
.end method

.method protected setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 1
    .param p1, "toSet"    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    instance-of v0, p1, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 164
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0
.end method
