.class Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineJobFactory"
.end annotation


# instance fields
.field final animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field final pool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineJob",
            "<*>;>;"
        }
    .end annotation
.end field

.field final sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;)V
    .locals 2
    .param p1, "diskCacheExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p2, "sourceExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p3, "sourceUnlimitedExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p4, "animationExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p5, "listener"    # Lcom/bumptech/glide/load/engine/EngineJobListener;

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/16 v0, 0x96

    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;-><init>(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)V

    .line 457
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/pool/FactoryPools;->simple(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroid/support/v4/util/Pools$Pool;

    .line 478
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 479
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 480
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 481
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 482
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    .line 483
    return-void
.end method

.method private static shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V
    .locals 5
    .param p0, "pool"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 510
    const-wide/16 v2, 0x5

    .line 511
    .local v2, "shutdownSeconds":J
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 513
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 515
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Failed to shutdown"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "ie":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 522
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method


# virtual methods
.method build(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;
    .locals 6
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .param p2, "isMemoryCacheable"    # Z
    .param p3, "useUnlimitedSourceGeneratorPool"    # Z
    .param p4, "useAnimationPool"    # Z
    .param p5, "onlyRetrieveFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/EngineJob",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-static {v1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    .local v0, "result":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 501
    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/EngineJob;->init(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object v1

    return-object v1
.end method

.method shutdown()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 488
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 489
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 490
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 491
    return-void
.end method
