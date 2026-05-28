.class Lcom/bumptech/glide/load/engine/EngineJob;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$Callback;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;,
        Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DecodeJob$Callback",
        "<TR;>;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field private static final MAIN_THREAD_HANDLER:Landroid/os/Handler;

.field private static final MSG_CANCELLED:I = 0x3

.field private static final MSG_COMPLETE:I = 0x1

.field private static final MSG_EXCEPTION:I = 0x2


# instance fields
.field private final animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final cbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private dataSource:Lcom/bumptech/glide/load/DataSource;

.field private decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private engineResource:Lcom/bumptech/glide/load/engine/EngineResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;"
        }
    .end annotation
.end field

.field private final engineResourceFactory:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field private exception:Lcom/bumptech/glide/load/engine/GlideException;

.field private hasLoadFailed:Z

.field private hasResource:Z

.field private ignoredCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private isCacheable:Z

.field private volatile isCancelled:Z

.field private key:Lcom/bumptech/glide/load/Key;

.field private final listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field private onlyRetrieveFromCache:Z

.field private final pool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineJob",
            "<*>;>;"
        }
    .end annotation
.end field

.field private resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end field

.field private final sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private useAnimationPool:Z

.field private useUnlimitedSourceGeneratorPool:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    .line 27
    new-instance v0, Landroid/os/Handler;

    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Landroid/support/v4/util/Pools$Pool;)V
    .locals 8
    .param p1, "diskCacheExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p2, "sourceExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p3, "sourceUnlimitedExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p4, "animationExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p5, "listener"    # Lcom/bumptech/glide/load/engine/EngineJobListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/EngineJobListener;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineJob",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    .local p6, "pool":Landroid/support/v4/util/Pools$Pool;, "Landroid/support/v4/util/Pools$Pool<Lcom/bumptech/glide/load/engine/EngineJob<*>;>;"
    sget-object v7, Lcom/bumptech/glide/load/engine/EngineJob;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V

    .line 80
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V
    .locals 2
    .param p1, "diskCacheExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p2, "sourceExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p3, "sourceUnlimitedExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p4, "animationExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p5, "listener"    # Lcom/bumptech/glide/load/engine/EngineJobListener;
    .param p7, "engineResourceFactory"    # Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/EngineJobListener;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineJob",
            "<*>;>;",
            "Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    .local p6, "pool":Landroid/support/v4/util/Pools$Pool;, "Landroid/support/v4/util/Pools$Pool<Lcom/bumptech/glide/load/engine/EngineJob<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    .line 37
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 91
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 92
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 93
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 94
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 95
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    .line 96
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/EngineJob;->pool:Landroid/support/v4/util/Pools$Pool;

    .line 97
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResourceFactory:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    .line 98
    return-void
.end method

.method private addIgnoredCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/bumptech/glide/request/ResourceCallback;

    .prologue
    .line 163
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    return-void
.end method

.method private getActiveSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->useUnlimitedSourceGeneratorPool:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 153
    :goto_0
    return-object v0

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->useAnimationPool:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    goto :goto_0
.end method

.method private isInIgnoredCallbacks(Lcom/bumptech/glide/request/ResourceCallback;)Z
    .locals 1
    .param p1, "cb"    # Lcom/bumptech/glide/request/ResourceCallback;

    .prologue
    .line 172
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private release(Z)V
    .locals 3
    .param p1, "isRemovedFromQueue"    # Z

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 238
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 239
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    .line 241
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    .line 242
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    :cond_0
    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    .line 247
    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    .line 248
    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    .line 249
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->release(Z)V

    .line 250
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 251
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    .line 252
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->dataSource:Lcom/bumptech/glide/load/DataSource;

    .line 253
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->pool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method


# virtual methods
.method addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/bumptech/glide/request/ResourceCallback;

    .prologue
    .line 124
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 126
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->dataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/ResourceCallback;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method cancel()V
    .locals 2

    .prologue
    .line 177
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->cancel()V

    .line 185
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V

    goto :goto_0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method handleCancelledOnMainThread()V
    .locals 2

    .prologue
    .line 229
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 230
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/EngineJob;->release(Z)V

    .line 235
    return-void
.end method

.method handleExceptionOnMainThread()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    const/4 v4, 0x0

    .line 278
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v1}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 279
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v1, :cond_0

    .line 280
    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/engine/EngineJob;->release(Z)V

    .line 298
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Received an exception without any callbacks to notify"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_1
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-eqz v1, :cond_2

    .line 285
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already failed once"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    .line 289
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 291
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/ResourceCallback;

    .line 292
    .local v0, "cb":Lcom/bumptech/glide/request/ResourceCallback;
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/EngineJob;->isInIgnoredCallbacks(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 293
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/ResourceCallback;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_1

    .line 297
    .end local v0    # "cb":Lcom/bumptech/glide/request/ResourceCallback;
    :cond_4
    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/engine/EngineJob;->release(Z)V

    goto :goto_0
.end method

.method handleResultOnMainThread()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    const/4 v6, 0x0

    .line 195
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v3}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 196
    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 198
    invoke-direct {p0, v6}, Lcom/bumptech/glide/load/engine/EngineJob;->release(Z)V

    .line 225
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Received a resource without any callbacks to notify"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    :cond_1
    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-eqz v3, :cond_2

    .line 203
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Already have resource"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    :cond_2
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResourceFactory:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    iget-boolean v5, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCacheable:Z

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;->build(Lcom/bumptech/glide/load/engine/Resource;Z)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v3

    iput-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    .line 206
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    .line 210
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 211
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-interface {v3, p0, v4, v5}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 214
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 215
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/ResourceCallback;

    .line 216
    .local v0, "cb":Lcom/bumptech/glide/request/ResourceCallback;
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/EngineJob;->isInIgnoredCallbacks(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 217
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 218
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->dataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v3, v4}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    .line 214
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    .end local v0    # "cb":Lcom/bumptech/glide/request/ResourceCallback;
    :cond_4
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/EngineResource;->release()V

    .line 224
    invoke-direct {p0, v6}, Lcom/bumptech/glide/load/engine/EngineJob;->release(Z)V

    goto :goto_0
.end method

.method init(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;
    .locals 0
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .param p2, "isCacheable"    # Z
    .param p3, "useUnlimitedSourceGeneratorPool"    # Z
    .param p4, "useAnimationPool"    # Z
    .param p5, "onlyRetrieveFromCache"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/EngineJob",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    .line 108
    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCacheable:Z

    .line 109
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->useUnlimitedSourceGeneratorPool:Z

    .line 110
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->useAnimationPool:Z

    .line 111
    iput-boolean p5, p0, Lcom/bumptech/glide/load/engine/EngineJob;->onlyRetrieveFromCache:Z

    .line 112
    return-object p0
.end method

.method isCancelled()Z
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    return v0
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 2
    .param p1, "e"    # Lcom/bumptech/glide/load/engine/GlideException;

    .prologue
    .line 265
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    .line 266
    sget-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 267
    return-void
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 259
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->dataSource:Lcom/bumptech/glide/load/DataSource;

    .line 260
    sget-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 261
    return-void
.end method

.method onlyRetrieveFromCache()Z
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->onlyRetrieveFromCache:Z

    return v0
.end method

.method removeCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/bumptech/glide/request/ResourceCallback;

    .prologue
    .line 136
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 138
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-eqz v0, :cond_2

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/EngineJob;->addIgnoredCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->cancel()V

    goto :goto_0
.end method

.method public reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    .local p1, "job":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<*>;"
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->getActiveSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public start(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    .local p1, "decodeJob":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 117
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->willDecodeFromCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 120
    .local v0, "executor":Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-void

    .line 119
    .end local v0    # "executor":Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->getActiveSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    goto :goto_0
.end method
