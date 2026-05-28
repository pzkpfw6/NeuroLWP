.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private firstFrame:Landroid/graphics/Bitmap;

.field private final gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private final handler:Landroid/os/Handler;

.field private isCleared:Z

.field private isLoadPending:Z

.field private isRunning:Z

.field private next:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private onEveryFrameListener:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private pendingTarget:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private requestBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final requestManager:Lcom/bumptech/glide/RequestManager;

.field private startFromFirstFrame:Z

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "glide"    # Lcom/bumptech/glide/Glide;
    .param p2, "gifDecoder"    # Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p6, "firstFrame"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "II",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .line 65
    .local p5, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    const/4 v4, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getRequestBuilder(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    .line 64
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .param p3, "gifDecoder"    # Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p7, "firstFrame"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/RequestManager;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/RequestBuilder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p5, "requestBuilder":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<Landroid/graphics/Bitmap;>;"
    .local p6, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 84
    if-nez p4, :cond_0

    .line 85
    new-instance p4, Landroid/os/Handler;

    .end local p4    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V

    invoke-direct {p4, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 87
    .restart local p4    # "handler":Landroid/os/Handler;
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 88
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    .line 89
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 91
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 93
    invoke-virtual {p0, p6, p7}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    .line 94
    return-void
.end method

.method private static getFrameSignature()Lcom/bumptech/glide/load/Key;
    .locals 4

    .prologue
    .line 348
    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private getFrameSize()I
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 149
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 148
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method

.method private static getRequestBuilder(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/RequestBuilder;
    .locals 3
    .param p0, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestManager;",
            "II)",
            "Lcom/bumptech/glide/RequestBuilder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 336
    .line 337
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 339
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 340
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 341
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 342
    invoke-virtual {v1, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 338
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 336
    return-object v0
.end method

.method private loadNextFrame()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 203
    iget-boolean v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    if-eqz v4, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-boolean v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->startFromFirstFrame:Z

    if-eqz v4, :cond_2

    .line 207
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-nez v4, :cond_3

    move v4, v5

    :goto_1
    const-string v7, "Pending target must be null when starting from the first frame"

    invoke-static {v4, v7}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->resetFrameIndex()V

    .line 210
    iput-boolean v6, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->startFromFirstFrame:Z

    .line 212
    :cond_2
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v4, :cond_4

    .line 213
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 214
    .local v1, "temp":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 215
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->onFrameReady(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V

    goto :goto_0

    .end local v1    # "temp":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    :cond_3
    move v4, v6

    .line 207
    goto :goto_1

    .line 218
    :cond_4
    iput-boolean v5, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 221
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextDelay()I

    move-result v0

    .line 222
    .local v0, "delay":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, v0

    add-long v2, v4, v6

    .line 224
    .local v2, "targetTime":J
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    .line 225
    new-instance v4, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v6}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result v6

    invoke-direct {v4, v5, v6, v2, v3}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;-><init>(Landroid/os/Handler;IJ)V

    iput-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 226
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    invoke-static {}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getFrameSignature()Lcom/bumptech/glide/load/Key;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0
.end method

.method private recycleFirstFrame()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    .line 234
    :cond_0
    return-void
.end method

.method private start()V
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    .line 171
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    .line 176
    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->recycleFirstFrame()V

    .line 181
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 184
    iput-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 188
    iput-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 192
    iput-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->clear()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    .line 196
    return-void
.end method

.method getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method getCurrentIndex()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget v0, v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFrameCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    return v0
.end method

.method getFrameTransformation()Lcom/bumptech/glide/load/Transformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->transformation:Lcom/bumptech/glide/load/Transformation;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method getLoopCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getTotalIterationCount()I

    move-result v0

    return v0
.end method

.method getSize()I
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getByteSize()I

    move-result v0

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getFrameSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method onFrameReady(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V
    .locals 5
    .param p1, "delayTarget"    # Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 252
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->onEveryFrameListener:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->onEveryFrameListener:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;

    invoke-interface {v3}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;->onFrameReady()V

    .line 255
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 256
    iget-boolean v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    if-eqz v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 285
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-boolean v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-nez v3, :cond_2

    .line 265
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 270
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->recycleFirstFrame()V

    .line 271
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 272
    .local v2, "previous":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 275
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 276
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    .line 277
    .local v0, "cb":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;->onFrameReady()V

    .line 275
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 279
    .end local v0    # "cb":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    :cond_3
    if-eqz v2, :cond_4

    .line 280
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 284
    .end local v1    # "i":I
    .end local v2    # "previous":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    goto :goto_0
.end method

.method setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p2, "firstFrame"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 98
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 100
    return-void
.end method

.method setNextStartFromFirstFrame()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 237
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "Can\'t restart a running animation"

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 238
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->startFromFirstFrame:Z

    .line 239
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 243
    :cond_0
    return-void

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setOnEveryFrameReadyListener(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;)V
    .locals 0
    .param p1, "onEveryFrameListener"    # Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 247
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->onEveryFrameListener:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;

    .line 248
    return-void
.end method

.method subscribe(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;)V
    .locals 3
    .param p1, "frameCallback"    # Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    .prologue
    .line 111
    iget-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot subscribe to a cleared frame loader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot subscribe twice in a row"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 118
    .local v0, "start":Z
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    if-eqz v0, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->start()V

    .line 122
    :cond_2
    return-void
.end method

.method unsubscribe(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;)V
    .locals 1
    .param p1, "frameCallback"    # Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    .line 129
    :cond_0
    return-void
.end method
