.class public Lorg/kustom/skin/dashboard/glide/GlideRequest;
.super Lcom/bumptech/glide/RequestBuilder;
.source "GlideRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/RequestBuilder",
        "<TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .param p1, "glide"    # Lcom/bumptech/glide/Glide;
    .param p2, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p3, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/RequestBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    .local p2, "other":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<*>;"
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "arg0"    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public centerCrop()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 461
    :goto_0
    return-object p0

    .line 459
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public centerInside()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerInside()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 517
    :goto_0
    return-object p0

    .line 515
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerInside()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public circleCrop()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 540
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->circleCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 545
    :goto_0
    return-object p0

    .line 543
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->circleCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->clone()Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->clone()Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 768
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public decode(Ljava/lang/Class;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
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
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->decode(Ljava/lang/Class;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 335
    :goto_0
    return-object p0

    .line 333
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->decode(Ljava/lang/Class;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public disallowHardwareConfig()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->disallowHardwareConfig()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 405
    :goto_0
    return-object p0

    .line 403
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->disallowHardwareConfig()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 139
    :goto_0
    return-object p0

    .line 137
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public dontAnimate()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->dontAnimate()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 649
    :goto_0
    return-object p0

    .line 647
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->dontAnimate()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public dontTransform()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->dontTransform()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 635
    :goto_0
    return-object p0

    .line 633
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->dontTransform()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 419
    :goto_0
    return-object p0

    .line 417
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 349
    :goto_0
    return-object p0

    .line 347
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public encodeQuality(I)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->encodeQuality(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 363
    :goto_0
    return-object p0

    .line 361
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->encodeQuality(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public bridge synthetic error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->error(Lcom/bumptech/glide/RequestBuilder;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public error(I)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->error(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 237
    :goto_0
    return-object p0

    .line 235
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->error(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
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
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 223
    :goto_0
    return-object p0

    .line 221
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public error(Lcom/bumptech/glide/RequestBuilder;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1    # Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "arg0":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public fallback(I)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fallback(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 209
    :goto_0
    return-object p0

    .line 207
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fallback(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
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
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 195
    :goto_0
    return-object p0

    .line 193
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public fitCenter()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fitCenter()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 489
    :goto_0
    return-object p0

    .line 487
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fitCenter()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 391
    :goto_0
    return-object p0

    .line 389
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public frame(J)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 3
    .param p1, "arg0"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->frame(J)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 377
    :goto_0
    return-object p0

    .line 375
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->frame(J)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method protected bridge synthetic getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getDownloadOnlyRequest()Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getDownloadOnlyRequest()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
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
    .line 69
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    sget-object v1, Lorg/kustom/skin/dashboard/glide/GlideRequest;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
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
            "Lcom/bumptech/glide/request/RequestListener",
            "<TTranscodeType;>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "arg0":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Landroid/graphics/Bitmap;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Landroid/net/Uri;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Ljava/io/File;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Ljava/lang/Integer;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Ljava/lang/String;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Ljava/net/URL;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load([B)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Landroid/graphics/Bitmap;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Landroid/net/Uri;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Ljava/io/File;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Ljava/lang/Integer;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Ljava/lang/String;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load(Ljava/net/URL;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->load([B)Lorg/kustom/skin/dashboard/glide/GlideRequest;

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
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

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
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 720
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

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
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

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
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 741
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public load(Ljava/lang/Integer;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
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
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

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
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

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
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 727
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

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
            "<TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 755
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

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
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 762
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public onlyRetrieveFromCache(Z)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->onlyRetrieveFromCache(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 125
    :goto_0
    return-object p0

    .line 123
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->onlyRetrieveFromCache(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public optionalCenterCrop()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalCenterCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 447
    :goto_0
    return-object p0

    .line 445
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalCenterCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public optionalCenterInside()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalCenterInside()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 503
    :goto_0
    return-object p0

    .line 501
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalCenterInside()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public optionalCircleCrop()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalCircleCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 531
    :goto_0
    return-object p0

    .line 529
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalCircleCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public optionalFitCenter()Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalFitCenter()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 475
    :goto_0
    return-object p0

    .line 473
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalFitCenter()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "arg0":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 591
    :goto_0
    return-object p0

    .line 589
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "arg1":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 606
    :goto_0
    return-object p0

    .line 604
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public override(I)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "size"    # I
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->override(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 293
    :goto_0
    return-object p0

    .line 291
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->override(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public override(II)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->override(II)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 279
    :goto_0
    return-object p0

    .line 277
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->override(II)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public placeholder(I)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->placeholder(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 181
    :goto_0
    return-object p0

    .line 179
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->placeholder(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
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
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 167
    :goto_0
    return-object p0

    .line 165
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 153
    :goto_0
    return-object p0

    .line 151
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option",
            "<TT;>;TT;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "arg0":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<TT;>;"
    .local p2, "arg1":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 321
    :goto_0
    return-object p0

    .line 319
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 307
    :goto_0
    return-object p0

    .line 305
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public sizeMultiplier(F)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->sizeMultiplier(F)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 83
    :goto_0
    return-object p0

    .line 81
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->sizeMultiplier(F)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public skipMemoryCache(Z)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "skip"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->skipMemoryCache(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 265
    :goto_0
    return-object p0

    .line 263
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->skipMemoryCache(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # Landroid/content/res/Resources$Theme;
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
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->theme(Landroid/content/res/Resources$Theme;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 251
    :goto_0
    return-object p0

    .line 249
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->theme(Landroid/content/res/Resources$Theme;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->thumbnail(F)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # [Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public thumbnail(F)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1, "sizeMultiplier"    # F
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 699
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1    # Lcom/bumptech/glide/RequestBuilder;
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "arg0":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public final varargs thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1    # [Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 692
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "arg0":[Lcom/bumptech/glide/RequestBuilder;, "[Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public timeout(I)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "arg0"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->timeout(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 433
    :goto_0
    return-object p0

    .line 431
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->timeout(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "arg0":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 559
    :goto_0
    return-object p0

    .line 557
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "arg1":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 621
    :goto_0
    return-object p0

    .line 619
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 572
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "arg0":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 577
    :goto_0
    return-object p0

    .line 575
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public bridge synthetic transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1    # Lcom/bumptech/glide/TransitionOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->transition(Lcom/bumptech/glide/TransitionOptions;)Lorg/kustom/skin/dashboard/glide/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public transition(Lcom/bumptech/glide/TransitionOptions;)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 1
    .param p1    # Lcom/bumptech/glide/TransitionOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/TransitionOptions",
            "<*-TTranscodeType;>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    .local p1, "arg0":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideRequest;

    return-object v0
.end method

.method public useAnimationPool(Z)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->useAnimationPool(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 111
    :goto_0
    return-object p0

    .line 109
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->useAnimationPool(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lorg/kustom/skin/dashboard/glide/GlideRequest;
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/kustom/skin/dashboard/glide/GlideRequest",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/kustom/skin/dashboard/glide/GlideRequest;, "Lorg/kustom/skin/dashboard/glide/GlideRequest<TTranscodeType;>;"
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->useUnlimitedSourceGeneratorsPool(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 97
    :goto_0
    return-object p0

    .line 95
    :cond_0
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->useUnlimitedSourceGeneratorsPool(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/kustom/skin/dashboard/glide/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method
