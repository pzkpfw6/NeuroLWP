.class final Lcom/bumptech/glide/load/engine/ActiveResources;
.super Ljava/lang/Object;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;,
        Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    }
.end annotation


# static fields
.field private static final MSG_CLEAN_REF:I = 0x1


# instance fields
.field final activeEngineResources:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private cleanReferenceQueueThread:Ljava/lang/Thread;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final isActiveResourceRetentionAllowed:Z

.field private volatile isShutdown:Z

.field private listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

.field private final mainHandler:Landroid/os/Handler;

.field private resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 3
    .param p1, "isActiveResourceRetentionAllowed"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/ActiveResources$1;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/engine/ActiveResources$1;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->mainHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    .line 55
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    .line 56
    return-void
.end method

.method private getReferenceQueue()Ljava/lang/ref/ReferenceQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 114
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bumptech/glide/load/engine/ActiveResources$2;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/engine/ActiveResources$2;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V

    const-string v2, "glide-active-resources"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueueThread:Ljava/lang/Thread;

    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueueThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method activate(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .locals 4
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "resource":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    new-instance v1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 67
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/ActiveResources;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 70
    .local v1, "toPut":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 71
    .local v0, "removed":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V

    .line 74
    :cond_0
    return-void
.end method

.method cleanReferenceQueue()V
    .locals 5

    .prologue
    .line 129
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isShutdown:Z

    if-nez v3, :cond_1

    .line 131
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 132
    .local v2, "ref":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->mainHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    .line 136
    .local v0, "current":Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;->onResourceDequeued()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v0    # "current":Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    .end local v2    # "ref":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 144
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    .locals 4
    .param p1, "ref"    # Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 100
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-boolean v1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->isCacheable:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineResource;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;ZZ)V

    .line 107
    .local v0, "newResource":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/engine/EngineResource;->setResourceListener(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    .line 108
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1, v2, v0}, Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;->onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    goto :goto_0
.end method

.method deactivate(Lcom/bumptech/glide/load/Key;)V
    .locals 2
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 78
    .local v0, "removed":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V

    .line 81
    :cond_0
    return-void
.end method

.method get(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 3
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 86
    .local v1, "activeRef":Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    if-nez v1, :cond_1

    .line 87
    const/4 v0, 0x0

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineResource;

    .line 91
    .local v0, "active":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V

    goto :goto_0
.end method

.method setDequeuedResourceCallback(Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    .line 149
    return-void
.end method

.method setListener(Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .line 60
    return-void
.end method

.method shutdown()V
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isShutdown:Z

    .line 159
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueueThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueueThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueueThread:Ljava/lang/Thread;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 166
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueueThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to join in time"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
