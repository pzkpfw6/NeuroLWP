.class public Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
.super Lcom/mikepenz/fastadapter/AbstractAdapter;
.source "ModelAdapter.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IItemAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Lcom/mikepenz/fastadapter/AbstractAdapter",
        "<TItem;>;",
        "Lcom/mikepenz/fastadapter/IItemAdapter",
        "<TModel;TItem;>;"
    }
.end annotation


# instance fields
.field protected mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mIdDistributor:Lcom/mikepenz/fastadapter/IIdDistributor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IIdDistributor",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IInterceptor",
            "<TModel;TItem;>;"
        }
    .end annotation
.end field

.field private mItemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter",
            "<TModel;TItem;>;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mReverseInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IInterceptor",
            "<TItem;TModel;>;"
        }
    .end annotation
.end field

.field private mUseIdDistributor:Z


# direct methods
.method public constructor <init>(Lcom/mikepenz/fastadapter/IInterceptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IInterceptor",
            "<TModel;TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "interceptor":Lcom/mikepenz/fastadapter/IInterceptor;, "Lcom/mikepenz/fastadapter/IInterceptor<TModel;TItem;>;"
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/AbstractAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    .line 134
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;-><init>(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    .line 30
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    .line 31
    return-void
.end method

.method public static models(Lcom/mikepenz/fastadapter/IInterceptor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(",
            "Lcom/mikepenz/fastadapter/IInterceptor",
            "<TModel;TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "interceptor":Lcom/mikepenz/fastadapter/IInterceptor;, "Lcom/mikepenz/fastadapter/IInterceptor<TModel;TItem;>;"
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;-><init>(Lcom/mikepenz/fastadapter/IInterceptor;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TModel;>;"
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 482
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v1

    return-object v1
.end method

.method public final varargs add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TModel;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p2, "items":[Ljava/lang/Object;, "[TModel;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TModel;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 443
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v1

    return-object v1
.end method

.method public final varargs add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TModel;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TModel;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 489
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 491
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 493
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    .line 495
    :cond_1
    return-object p0
.end method

.method public addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 451
    .local v0, "countBefore":I
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 452
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 454
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    if-nez v1, :cond_1

    .line 455
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    .line 460
    :goto_0
    return-object p0

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 458
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 574
    .local v0, "count":I
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 575
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    .line 576
    return-object p0
.end method

.method public filter(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 160
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->filter(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    return-object v0
.end method

.method public getAdapterItemCount()I
    .locals 1

    .prologue
    .line 230
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getAdapterPosition(J)I
    .locals 5
    .param p1, "identifier"    # J

    .prologue
    .line 260
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 261
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 265
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 260
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterPosition(J)I

    move-result v0

    return v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getGlobalPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 275
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IIdDistributor",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mIdDistributor:Lcom/mikepenz/fastadapter/IIdDistributor;

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/mikepenz/fastadapter/IIdDistributor;->DEFAULT:Lcom/mikepenz/fastadapter/IIdDistributor;

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mIdDistributor:Lcom/mikepenz/fastadapter/IIdDistributor;

    goto :goto_0
.end method

.method public getInterceptor()Lcom/mikepenz/fastadapter/IInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IInterceptor",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    return-object v0
.end method

.method public getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    return-object v0
.end method

.method public getModels()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TModel;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TModel;>;"
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 214
    .local v0, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mReverseInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    if-eqz v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mReverseInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    invoke-interface {v3, v0}, Lcom/mikepenz/fastadapter/IInterceptor;->intercept(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_0
    instance-of v3, v0, Lcom/mikepenz/fastadapter/IModelItem;

    if-eqz v3, :cond_1

    .line 217
    check-cast v0, Lcom/mikepenz/fastadapter/IModelItem;

    .end local v0    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IModelItem;->getModel()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .restart local v0    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "to get the list of models, the item either needs to implement `IModelItem` or you have to provide a `reverseInterceptor`"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v0    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    :cond_2
    return-object v1
.end method

.method public getReverseInterceptor()Lcom/mikepenz/fastadapter/IInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IInterceptor",
            "<TItem;TModel;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mReverseInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    return-object v0
.end method

.method public intercept(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)TItem;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "model":Ljava/lang/Object;, "TModel;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IInterceptor;->intercept(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    return-object v0
.end method

.method public intercept(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;)",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<TModel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 85
    .local v2, "model":Ljava/lang/Object;, "TModel;"
    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    .line 86
    .local v0, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v0    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    .end local v2    # "model":Ljava/lang/Object;, "TModel;"
    :cond_1
    return-object v1
.end method

.method public isUseIdDistributor()Z
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    return v0
.end method

.method public move(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    .line 530
    .local v1, "preItemCount":I
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    sub-int v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 531
    .local v0, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    sub-int v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 532
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    sub-int v3, p2, v1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 533
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemMoved(II)V

    .line 534
    return-object p0
.end method

.method public remapMappedTypes()V
    .locals 1

    .prologue
    .line 422
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->clearTypeInstance()V

    .line 423
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 424
    return-void
.end method

.method public bridge synthetic remove(I)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 544
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRemoved(I)V

    .line 545
    return-object p0
.end method

.method public bridge synthetic removeRange(II)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 6
    .param p1, "position"    # I
    .param p2, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 557
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v2

    .line 559
    .local v2, "preItemCount":I
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 561
    .local v3, "saveItemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 562
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    sub-int v5, p1, v2

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    .line 566
    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->set(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITModel;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p2, "element":Ljava/lang/Object;, "TModel;"
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    .line 506
    .local v0, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    if-nez v0, :cond_0

    .line 507
    .end local p0    # "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p0

    goto :goto_0
.end method

.method public set(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TModel;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->set(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected set(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .param p2, "resetFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;Z)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TModel;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 299
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v1

    return-object v1
.end method

.method public set(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .param p2, "resetFilter"    # Z
    .param p3, "adapterNotifier"    # Lcom/mikepenz/fastadapter/IAdapterNotifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;Z",
            "Lcom/mikepenz/fastadapter/IAdapterNotifier;",
            ")",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TModel;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 313
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-virtual {p0, v0, p2, p3}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p2, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->registerTypeInstance(Lcom/mikepenz/fastadapter/IItem;)V

    .line 517
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemChanged(I)V

    .line 518
    return-object p0
.end method

.method public setInternal(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 6
    .param p2, "resetFilter"    # Z
    .param p3, "adapterNotifier"    # Lcom/mikepenz/fastadapter/IAdapterNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;Z",
            "Lcom/mikepenz/fastadapter/IAdapterNotifier;",
            ")",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-boolean v4, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    if-eqz v4, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 331
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getConstraint()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/FastAdapter;->getExtensions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 336
    .local v0, "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->set(Ljava/util/List;Z)V

    goto :goto_0

    .line 340
    .end local v0    # "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 341
    .local v2, "newItemsCount":I
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 342
    .local v3, "previousItemsCount":I
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    .line 345
    .local v1, "itemsBeforeThisAdapter":I
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    if-eq p1, v4, :cond_4

    .line 347
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 348
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 352
    :cond_3
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 359
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    if-eqz v4, :cond_5

    .line 360
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    iget-object v5, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 364
    :cond_5
    if-nez p3, :cond_6

    .line 365
    sget-object p3, Lcom/mikepenz/fastadapter/IAdapterNotifier;->DEFAULT:Lcom/mikepenz/fastadapter/IAdapterNotifier;

    .line 367
    :cond_6
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v4

    invoke-interface {p3, v4, v2, v3, v1}, Lcom/mikepenz/fastadapter/IAdapterNotifier;->notify(Lcom/mikepenz/fastadapter/FastAdapter;III)Z

    .line 369
    return-object p0
.end method

.method public bridge synthetic setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TModel;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setNewList(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public setNewList(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 4
    .param p2, "retainFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;Z)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TModel;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 391
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-boolean v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 396
    :cond_0
    const/4 v0, 0x0

    .line 397
    .local v0, "filter":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getConstraint()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getConstraint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    .line 402
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    .line 403
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 405
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_2

    .line 406
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 409
    :cond_2
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 415
    :goto_0
    return-object p0

    .line 412
    :cond_3
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    goto :goto_0
.end method

.method public withComparator(Ljava/util/Comparator;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TItem;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->withComparator(Ljava/util/Comparator;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public withComparator(Ljava/util/Comparator;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .param p2, "sortNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TItem;>;Z)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    .line 189
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 190
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 191
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    .line 194
    :cond_0
    return-object p0
.end method

.method public withIdDistributor(Lcom/mikepenz/fastadapter/IIdDistributor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IIdDistributor",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "idDistributor":Lcom/mikepenz/fastadapter/IIdDistributor;, "Lcom/mikepenz/fastadapter/IIdDistributor<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mIdDistributor:Lcom/mikepenz/fastadapter/IIdDistributor;

    .line 102
    return-object p0
.end method

.method public withInterceptor(Lcom/mikepenz/fastadapter/IInterceptor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IInterceptor",
            "<TModel;TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "mInterceptor":Lcom/mikepenz/fastadapter/IInterceptor;, "Lcom/mikepenz/fastadapter/IInterceptor<TModel;TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    .line 50
    return-object p0
.end method

.method public withItemFilter(Lcom/mikepenz/fastadapter/adapters/ItemFilter;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter",
            "<TModel;TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "itemFilter":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mItemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    .line 144
    return-object p0
.end method

.method public withReverseInterceptor(Lcom/mikepenz/fastadapter/IInterceptor;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IInterceptor",
            "<TItem;TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    .local p1, "reverseInterceptor":Lcom/mikepenz/fastadapter/IInterceptor;, "Lcom/mikepenz/fastadapter/IInterceptor<TItem;TModel;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mReverseInterceptor:Lcom/mikepenz/fastadapter/IInterceptor;

    .line 61
    return-object p0
.end method

.method public withUseIdDistributor(Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .param p1, "useIdDistributor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<TModel;TItem;>;"
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mUseIdDistributor:Z

    .line 123
    return-object p0
.end method
