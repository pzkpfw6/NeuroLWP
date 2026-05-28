.class public abstract Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AbstractWrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mItems:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mItems:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getItem(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->shouldInsertItemAtPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mItems:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->itemInsertedBeforeCount(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 146
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    iget-object v1, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 147
    .local v0, "itemCount":I
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->itemInsertedBeforeCount(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 112
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->shouldInsertItemAtPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    .line 115
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->itemInsertedBeforeCount(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 97
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->shouldInsertItemAtPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->itemInsertedBeforeCount(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public abstract itemInsertedBeforeCount(I)I
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 247
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 248
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 172
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .param p3, "payloads"    # Ljava/util/List;

    .prologue
    .line 182
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->shouldInsertItemAtPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/mikepenz/fastadapter/IItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->itemInsertedBeforeCount(I)I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 160
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    iget-object v1, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 161
    .local v0, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 162
    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IItem;->getViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 165
    .end local v0    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 257
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 258
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 217
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 237
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 238
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 227
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 228
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 206
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 207
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 70
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 71
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 74
    :cond_0
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 196
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 197
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mItems:Ljava/util/List;

    .line 32
    return-void
.end method

.method public abstract shouldInsertItemAtPosition(I)Z
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 83
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 84
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 87
    :cond_0
    return-void
.end method

.method public wrap(Landroid/support/v7/widget/RecyclerView$Adapter;)Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 42
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/commons/adapters/AbstractWrapAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 43
    return-object p0
.end method
