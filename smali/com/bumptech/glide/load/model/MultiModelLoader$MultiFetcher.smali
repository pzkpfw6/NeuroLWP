.class Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;
.super Ljava/lang/Object;
.source "MultiModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;
.implements Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/MultiModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<TData;>;",
        "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback",
        "<TData;>;"
    }
.end annotation


# instance fields
.field private callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback",
            "<-TData;>;"
        }
    .end annotation
.end field

.field private currentIndex:I

.field private exceptions:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TData;>;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/bumptech/glide/Priority;

.field private final throwableListPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/util/Pools$Pool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TData;>;>;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;, "Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher<TData;>;"
    .local p1, "fetchers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/data/DataFetcher<TData;>;>;"
    .local p2, "throwableListPool":Landroid/support/v4/util/Pools$Pool;, "Landroid/support/v4/util/Pools$Pool<Ljava/util/List<Ljava/lang/Throwable;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->throwableListPool:Landroid/support/v4/util/Pools$Pool;

    .line 87
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotEmpty(Ljava/util/Collection;)Ljava/util/Collection;

    .line 88
    iput-object p1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    .line 90
    return-void
.end method

.method private startNextOrFail()V
    .locals 5

    .prologue
    .line 146
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;, "Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher<TData;>;"
    iget v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 147
    iget v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->priority:Lcom/bumptech/glide/Priority;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v2, "Fetch failed"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 113
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;, "Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher<TData;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/DataFetcher;

    .line 114
    .local v0, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TData;>;"
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    goto :goto_0

    .line 116
    .end local v0    # "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TData;>;"
    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 3

    .prologue
    .line 102
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;, "Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher<TData;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->throwableListPool:Landroid/support/v4/util/Pools$Pool;

    iget-object v2, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    invoke-interface {v1, v2}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    .line 106
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/DataFetcher;

    .line 107
    .local v0, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TData;>;"
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    goto :goto_0

    .line 109
    .end local v0    # "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TData;>;"
    :cond_1
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;, "Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher<TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;, "Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher<TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 2
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback",
            "<-TData;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;, "Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher<TData;>;"
    .local p2, "callback":Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;, "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<-TData;>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->priority:Lcom/bumptech/glide/Priority;

    .line 95
    iput-object p2, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->throwableListPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0, p1, p0}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 98
    return-void
.end method

.method public onDataReady(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;, "Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher<TData;>;"
    .local p1, "data":Ljava/lang/Object;, "TData;"
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->startNextOrFail()V

    goto :goto_0
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;, "Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher<TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->startNextOrFail()V

    .line 143
    return-void
.end method
