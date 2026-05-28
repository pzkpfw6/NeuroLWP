.class public Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListenerImpl;
.super Ljava/lang/Object;
.source "OnBindViewHolderListenerImpl.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 5
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 23
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Lcom/mikepenz/fastadapter/FastAdapter;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 24
    check-cast v0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 25
    .local v0, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;
    invoke-virtual {v0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 26
    .local v1, "item":Lcom/mikepenz/fastadapter/IItem;
    if-eqz v1, :cond_1

    .line 27
    invoke-interface {v1, p1, p3}, Lcom/mikepenz/fastadapter/IItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 28
    instance-of v3, p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 29
    check-cast v3, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    invoke-virtual {v3, v1, p3}, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;->bindView(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    .line 32
    :cond_0
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    invoke-virtual {v3, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 35
    .end local v0    # "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;
    .end local v1    # "item":Lcom/mikepenz/fastadapter/IItem;
    :cond_1
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z
    .locals 5
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 108
    .local v0, "item":Lcom/mikepenz/fastadapter/IItem;
    if-eqz v0, :cond_3

    .line 109
    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IItem;->failedToRecycle(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    .line 110
    .local v1, "recycle":Z
    instance-of v3, p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    if-eqz v3, :cond_1

    .line 111
    if-nez v1, :cond_0

    check-cast p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;->failedToRecycle(Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 115
    .end local v1    # "recycle":Z
    :cond_1
    :goto_0
    return v1

    .restart local v1    # "recycle":Z
    :cond_2
    move v1, v2

    .line 111
    goto :goto_0

    .end local v1    # "recycle":Z
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    move v1, v2

    .line 115
    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 67
    invoke-static {p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 68
    .local v1, "item":Lcom/mikepenz/fastadapter/IItem;
    if-eqz v1, :cond_0

    .line 70
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mikepenz/fastadapter/IItem;->attachToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 71
    instance-of v2, p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    if-eqz v2, :cond_0

    .line 72
    check-cast p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1, v1}, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;->attachToWindow(Lcom/mikepenz/fastadapter/IItem;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v2, "FastAdapter"

    invoke-virtual {v0}, Ljava/lang/AbstractMethodError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 88
    invoke-static {p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    .line 89
    .local v0, "item":Lcom/mikepenz/fastadapter/IItem;
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IItem;->detachFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 91
    instance-of v1, p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    if-eqz v1, :cond_0

    .line 92
    check-cast p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;->detachFromWindow(Lcom/mikepenz/fastadapter/IItem;)V

    .line 95
    :cond_0
    return-void
.end method

.method public unBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 46
    .local v0, "item":Lcom/mikepenz/fastadapter/IItem;
    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IItem;->unbindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 48
    instance-of v1, p1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 49
    check-cast v1, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;

    invoke-virtual {v1, v0}, Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;->unbindView(Lcom/mikepenz/fastadapter/IItem;)V

    .line 52
    :cond_0
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 53
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v1, "FastAdapter"

    const-string v2, "The bindView method of this item should set the `Tag` on its itemView (https://github.com/mikepenz/FastAdapter/blob/develop/library-core/src/main/java/com/mikepenz/fastadapter/items/AbstractItem.java#L189)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
