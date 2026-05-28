.class public Lcom/bumptech/glide/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/bumptech/glide/ModelTypes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Lcom/bumptech/glide/ModelTypes",
        "<",
        "Lcom/bumptech/glide/RequestBuilder",
        "<TTranscodeType;>;>;"
    }
.end annotation


# static fields
.field protected static final DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private errorBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final glide:Lcom/bumptech/glide/Glide;

.field private final glideContext:Lcom/bumptech/glide/GlideContext;

.field private isDefaultTransitionOptionsSet:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private model:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private requestListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final requestManager:Lcom/bumptech/glide/RequestManager;

.field protected requestOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private thumbSizeMultiplier:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transitionOptions:Lcom/bumptech/glide/TransitionOptions;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/TransitionOptions",
            "<*-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 50
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
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
    .line 78
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p3, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    .line 79
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    .line 80
    iput-object p2, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 81
    iput-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 82
    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 83
    iput-object p4, p0, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    .line 84
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 86
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 87
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V
    .locals 3
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
    .line 90
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    .local p2, "other":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<*>;"
    iget-object v0, p2, Lcom/bumptech/glide/RequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    iget-object v1, p2, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    iget-object v2, p2, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    .line 91
    iget-object v0, p2, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    .line 92
    iget-boolean v0, p2, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    .line 93
    iget-object v0, p2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 94
    return-void
.end method

.method private buildRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;
    .locals 9
    .param p2    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "requestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 851
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    .local p2, "targetListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TTranscodeType;>;"
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 856
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v5

    .line 857
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v6

    .line 858
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    .line 851
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;
    .locals 11
    .param p2    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parentCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "priority"    # Lcom/bumptech/glide/Priority;
    .param p6, "overrideWidth"    # I
    .param p7, "overrideHeight"    # I
    .param p8, "requestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 873
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    .local p2, "targetListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TTranscodeType;>;"
    .local p4, "transitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    const/4 v3, 0x0

    .line 874
    .local v3, "errorRequestCoordinator":Lcom/bumptech/glide/request/ErrorRequestCoordinator;
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    if-eqz v0, :cond_0

    .line 875
    new-instance v3, Lcom/bumptech/glide/request/ErrorRequestCoordinator;

    .end local v3    # "errorRequestCoordinator":Lcom/bumptech/glide/request/ErrorRequestCoordinator;
    invoke-direct {v3, p3}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 876
    .restart local v3    # "errorRequestCoordinator":Lcom/bumptech/glide/request/ErrorRequestCoordinator;
    move-object p3, v3

    .line 880
    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/bumptech/glide/RequestBuilder;->buildThumbnailRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object v10

    .line 890
    .local v10, "mainRequest":Lcom/bumptech/glide/request/Request;
    if-nez v3, :cond_1

    .line 912
    .end local v10    # "mainRequest":Lcom/bumptech/glide/request/Request;
    :goto_0
    return-object v10

    .line 894
    .restart local v10    # "mainRequest":Lcom/bumptech/glide/request/Request;
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v6

    .line 895
    .local v6, "errorOverrideWidth":I
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v7

    .line 896
    .local v7, "errorOverrideHeight":I
    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 897
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->isValidOverride()Z

    move-result v0

    if-nez v0, :cond_2

    .line 898
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v6

    .line 899
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v7

    .line 902
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v4, v1, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, v1, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 907
    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v5

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v8, v1, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    move-object v1, p1

    move-object v2, p2

    .line 902
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object v9

    .line 911
    .local v9, "errorRequest":Lcom/bumptech/glide/request/Request;
    invoke-virtual {v3, v10, v9}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    move-object v10, v3

    .line 912
    goto :goto_0
.end method

.method private buildThumbnailRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;
    .locals 23
    .param p3, "parentCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "priority"    # Lcom/bumptech/glide/Priority;
    .param p6, "overrideWidth"    # I
    .param p7, "overrideHeight"    # I
    .param p8, "requestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 924
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    .local p2, "targetListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TTranscodeType;>;"
    .local p4, "transitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    if-eqz v2, :cond_4

    .line 926
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    if-eqz v2, :cond_0

    .line 927
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 931
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v2, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    move-object/from16 v21, v0

    .line 936
    .local v21, "thumbTransitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-boolean v2, v2, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    if-eqz v2, :cond_1

    .line 937
    move-object/from16 v21, p4

    .line 940
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->isPrioritySet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v19

    .line 943
    .local v19, "thumbPriority":Lcom/bumptech/glide/Priority;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v18

    .line 944
    .local v18, "thumbOverrideWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v17

    .line 945
    .local v17, "thumbOverrideHeight":I
    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 946
    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->isValidOverride()Z

    move-result v2

    if-nez v2, :cond_2

    .line 947
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result v18

    .line 948
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result v17

    .line 951
    :cond_2
    new-instance v6, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .local v6, "coordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p8

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 953
    invoke-direct/range {v2 .. v10}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v16

    .line 962
    .local v16, "fullRequest":Lcom/bumptech/glide/request/Request;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 964
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v11, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, v21

    move-object/from16 v8, v19

    move/from16 v9, v18

    move/from16 v10, v17

    .line 965
    invoke-direct/range {v3 .. v11}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object v20

    .line 974
    .local v20, "thumbRequest":Lcom/bumptech/glide/request/Request;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 975
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    .line 1008
    .end local v6    # "coordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    .end local v16    # "fullRequest":Lcom/bumptech/glide/request/Request;
    .end local v17    # "thumbOverrideHeight":I
    .end local v18    # "thumbOverrideWidth":I
    .end local v19    # "thumbPriority":Lcom/bumptech/glide/Priority;
    .end local v20    # "thumbRequest":Lcom/bumptech/glide/request/Request;
    .end local v21    # "thumbTransitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    :goto_1
    return-object v6

    .line 941
    .restart local v21    # "thumbTransitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v19

    goto :goto_0

    .line 977
    .end local v21    # "thumbTransitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 979
    new-instance v6, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .restart local v6    # "coordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p8

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 981
    invoke-direct/range {v2 .. v10}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v16

    .line 990
    .restart local v16    # "fullRequest":Lcom/bumptech/glide/request/Request;
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 991
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v5

    .line 1000
    .local v5, "thumbnailOptions":Lcom/bumptech/glide/request/RequestOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    .line 994
    invoke-direct/range {v2 .. v10}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v22

    .line 1004
    .local v22, "thumbnailRequest":Lcom/bumptech/glide/request/Request;
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    goto :goto_1

    .end local v5    # "thumbnailOptions":Lcom/bumptech/glide/request/RequestOptions;
    .end local v6    # "coordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    .end local v16    # "fullRequest":Lcom/bumptech/glide/request/Request;
    .end local v22    # "thumbnailRequest":Lcom/bumptech/glide/request/Request;
    :cond_5
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p8

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    .line 1008
    invoke-direct/range {v7 .. v15}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v6

    goto :goto_1
.end method

.method private getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 3
    .param p1, "current"    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 834
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    sget-object v0, Lcom/bumptech/glide/RequestBuilder$2;->$SwitchMap$com$bumptech$glide$Priority:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 843
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :pswitch_0
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    .line 841
    :goto_0
    return-object v0

    .line 838
    :pswitch_1
    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    goto :goto_0

    .line 841
    :pswitch_2
    sget-object v0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/target/Target;
    .locals 4
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "options"    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/RequestListener",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")TY;"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "TY;"
    .local p2, "targetListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TTranscodeType;>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 591
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-boolean v2, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    if-nez v2, :cond_0

    .line 593
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must call #load() before calling #into()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 596
    :cond_0
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    .line 597
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/RequestBuilder;->buildRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/Request;

    move-result-object v1

    .line 599
    .local v1, "request":Lcom/bumptech/glide/request/Request;
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 600
    .local v0, "previous":Lcom/bumptech/glide/request/Request;
    invoke-interface {v1, v0}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 601
    invoke-direct {p0, p3, v0}, Lcom/bumptech/glide/RequestBuilder;->isSkipMemoryCacheWithCompletePreviousRequest(Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/Request;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 602
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->recycle()V

    .line 607
    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/Request;

    invoke-interface {v2}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 611
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 620
    :cond_1
    :goto_0
    return-object p1

    .line 616
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 617
    invoke-interface {p1, v1}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    .line 618
    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v2, p1, v1}, Lcom/bumptech/glide/RequestManager;->track(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/Request;)V

    goto :goto_0
.end method

.method private isSkipMemoryCacheWithCompletePreviousRequest(Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/Request;)Z
    .locals 1
    .param p1, "options"    # Lcom/bumptech/glide/request/RequestOptions;
    .param p2, "previous"    # Lcom/bumptech/glide/request/Request;

    .prologue
    .line 630
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p1}, Lcom/bumptech/glide/request/RequestOptions;->isMemoryCacheable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1, "model"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    .line 333
    return-object p0
.end method

.method private obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;
    .locals 14
    .param p3, "requestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
    .param p4, "requestCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
    .param p6, "priority"    # Lcom/bumptech/glide/Priority;
    .param p7, "overrideWidth"    # I
    .param p8, "overrideHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestOptions;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II)",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 1029
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    .local p2, "targetListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TTranscodeType;>;"
    .local p5, "transitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    iget-object v10, p0, Lcom/bumptech/glide/RequestBuilder;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    iget-object v4, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 1042
    invoke-virtual {v4}, Lcom/bumptech/glide/GlideContext;->getEngine()Lcom/bumptech/glide/load/engine/Engine;

    move-result-object v12

    .line 1043
    invoke-virtual/range {p5 .. p5}, Lcom/bumptech/glide/TransitionOptions;->getTransitionFactory()Lcom/bumptech/glide/request/transition/TransitionFactory;

    move-result-object v13

    move-object/from16 v4, p3

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p6

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    .line 1029
    invoke-static/range {v0 .. v13}, Lcom/bumptech/glide/request/SingleRequest;->obtain(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/RequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/request/SingleRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1, "requestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 108
    return-object p0
.end method

.method public clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 559
    .local v1, "result":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    iget-object v2, v1, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 560
    iget-object v2, v1, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/TransitionOptions;->clone()Lcom/bumptech/glide/TransitionOptions;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    return-object v1

    .line 562
    .end local v1    # "result":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
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
    .line 45
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 823
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    return-object v0
.end method

.method public downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 805
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "TY;"
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "errorBuilder":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 181
    return-object p0
.end method

.method protected getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 829
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    new-instance v0, Lcom/bumptech/glide/RequestBuilder;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    sget-object v1, Lcom/bumptech/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public into(II)Lcom/bumptech/glide/request/FutureTarget;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget",
            "<TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 701
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    return-object v0
.end method

.method public into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "TY;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/RequestListener",
            "<TTranscodeType;>;)TY;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "TY;"
    .local p2, "targetListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/ViewTarget",
            "<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 647
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 650
    .local v0, "requestOptions":Lcom/bumptech/glide/request/RequestOptions;
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->isTransformationSet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 656
    sget-object v1, Lcom/bumptech/glide/RequestBuilder$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 678
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 679
    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/GlideContext;->buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object v1

    const/4 v2, 0x0

    .line 678
    invoke-direct {p0, v1, v2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/target/ViewTarget;

    return-object v1

    .line 658
    :pswitch_0
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 659
    goto :goto_0

    .line 661
    :pswitch_1
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 662
    goto :goto_0

    .line 666
    :pswitch_2
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 667
    goto :goto_0

    .line 669
    :pswitch_3
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 670
    goto :goto_0

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 153
    return-object p0
.end method

.method public load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 359
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 358
    return-object v0
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 386
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 385
    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 2
    .param p1, "resourceId"    # Ljava/lang/Integer;
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1, "model"    # Ljava/lang/Object;
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 2
    .param p1, "model"    # [B
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 532
    .local v0, "result":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->isDiskCacheStrategySet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 535
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->isSkipMemoryCacheSet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 536
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheOf(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 538
    :cond_1
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
    .line 45
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

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
    .line 45
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

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
    .line 45
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

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
    .line 45
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

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
    .line 45
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

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
    .line 45
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

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
    .line 45
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

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
    .line 45
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

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
    .line 45
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public preload()Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    const/high16 v0, -0x80000000

    .line 789
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/RequestBuilder;->preload(II)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public preload(II)Lcom/bumptech/glide/request/target/Target;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 774
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-static {v1, p1, p2}, Lcom/bumptech/glide/request/target/PreloadTarget;->obtain(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/request/target/PreloadTarget;

    move-result-object v0

    .line 775
    .local v0, "target":Lcom/bumptech/glide/request/target/PreloadTarget;, "Lcom/bumptech/glide/request/target/PreloadTarget<TTranscodeType;>;"
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v1

    return-object v1
.end method

.method public submit()Lcom/bumptech/glide/request/FutureTarget;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/FutureTarget",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    const/high16 v0, -0x80000000

    .line 718
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    return-object v0
.end method

.method public submit(II)Lcom/bumptech/glide/request/FutureTarget;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 736
    invoke-virtual {v1}, Lcom/bumptech/glide/GlideContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;II)V

    .line 738
    .local v0, "target":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TTranscodeType;>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v1}, Lcom/bumptech/glide/GlideContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/RequestBuilder$1;

    invoke-direct {v2, p0, v0}, Lcom/bumptech/glide/RequestBuilder$1;-><init>(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/request/RequestFutureTarget;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 751
    :goto_0
    return-object v0

    .line 748
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0
.end method

.method public thumbnail(F)Lcom/bumptech/glide/RequestBuilder;
    .locals 2
    .param p1, "sizeMultiplier"    # F
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 312
    return-object p0
.end method

.method public thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "thumbnailRequest":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 209
    return-object p0
.end method

.method public varargs thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 4
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "thumbnails":[Lcom/bumptech/glide/RequestBuilder;, "[Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 246
    :cond_0
    const/4 v3, 0x0

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v3}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 270
    :goto_0
    return-object v3

    .line 249
    :cond_1
    const/4 v2, 0x0

    .line 255
    .local v2, "previous":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 256
    aget-object v0, p1, v1

    .line 258
    .local v0, "current":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    if-nez v0, :cond_2

    .line 255
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 262
    :cond_2
    if-nez v2, :cond_3

    .line 264
    move-object v2, v0

    goto :goto_2

    .line 267
    :cond_3
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    goto :goto_2

    .line 270
    .end local v0    # "current":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    :cond_4
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    goto :goto_0
.end method

.method public transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
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
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<TTranscodeType;>;"
    .local p1, "transitionOptions":Lcom/bumptech/glide/TransitionOptions;, "Lcom/bumptech/glide/TransitionOptions<*-TTranscodeType;>;"
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/TransitionOptions;

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    .line 135
    return-object p0
.end method
