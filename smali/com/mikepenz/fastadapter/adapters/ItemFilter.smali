.class public Lcom/mikepenz/fastadapter/adapters/ItemFilter;
.super Landroid/widget/Filter;
.source "ItemFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Landroid/widget/Filter;"
    }
.end annotation


# instance fields
.field private mConstraint:Ljava/lang/CharSequence;

.field private mFilterPredicate:Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IItemAdapter$Predicate",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<*TItem;>;"
        }
    .end annotation
.end field

.field protected mItemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/ItemFilterListener",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mOriginalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<*TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    .local p1, "itemAdapter":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<*TItem;>;"
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 30
    return-void
.end method


# virtual methods
.method public add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<*TItem;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v0

    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 244
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 245
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 247
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public final varargs add(I[Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<*TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    .local p2, "items":[Lcom/mikepenz/fastadapter/IItem;, "[TItem;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<*TItem;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 215
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 217
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public final varargs add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<*TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    .local p1, "items":[Lcom/mikepenz/fastadapter/IItem;, "[TItem;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<*TItem;>;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 337
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 339
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdapterPosition(J)I
    .locals 5
    .param p1, "identifier"    # J

    .prologue
    .line 184
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 185
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 189
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 184
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
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
    .line 174
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(J)I

    move-result v0

    return v0
.end method

.method public getConstraint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 154
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 155
    .local v2, "selections":Ljava/util/Set;, "Ljava/util/Set<TItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 156
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IItem;

    .line 157
    .local v1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    .end local v2    # "selections":Ljava/util/Set;, "Ljava/util/Set<TItem;>;"
    .end local v3    # "size":I
    :cond_1
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public getSelections()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    iget-object v5, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 133
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 134
    .local v3, "selections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v5}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v6}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v0

    .line 135
    .local v0, "adapterOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 136
    iget-object v5, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    .line 137
    .local v2, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    add-int v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "adapterOffset":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    .end local v3    # "selections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4    # "size":I
    :cond_1
    iget-object v5, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v5}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelections()Ljava/util/Set;

    move-result-object v3

    :cond_2
    return-object v3
.end method

.method public move(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 6
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<*TItem;>;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v3

    .line 280
    .local v3, "preItemCount":I
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v4}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v0

    .line 281
    .local v0, "adjustedFrom":I
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v4}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v1

    .line 282
    .local v1, "adjustedTo":I
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    sub-int v5, v0, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    .line 283
    .local v2, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    sub-int v5, v0, v3

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 284
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    sub-int v5, v1, v3

    invoke-interface {v4, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 285
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    .line 286
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 288
    .end local v0    # "adjustedFrom":I
    .end local v1    # "adjustedTo":I
    .end local v2    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    .end local v3    # "preItemCount":I
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->move(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v4

    goto :goto_0
.end method

.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 64
    .local v3, "results":Landroid/widget/Filter$FilterResults;
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v3

    .line 69
    :cond_1
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/FastAdapter;->getExtensions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 70
    .local v0, "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IAdapterExtension;->performFiltering(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 73
    .end local v0    # "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_2
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    .line 75
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-nez v4, :cond_3

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v5}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    .line 80
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 82
    :cond_4
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 83
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 85
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    .line 87
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    if-eqz v4, :cond_0

    .line 88
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    invoke-interface {v4}, Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;->onReset()V

    goto :goto_0

    .line 91
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "filteredItems":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mFilterPredicate:Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;

    if-eqz v4, :cond_7

    .line 95
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    .line 96
    .local v2, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    iget-object v5, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mFilterPredicate:Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;

    invoke-interface {v5, v2, p1}, Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;->filter(Lcom/mikepenz/fastadapter/IItem;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 97
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 101
    .end local v2    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    :cond_7
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    .line 104
    :cond_8
    iput-object v1, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 105
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 117
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    if-eqz v0, :cond_1

    .line 122
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, p1, v0}, Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;->itemsFiltered(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 124
    :cond_1
    return-void
.end method

.method public remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<*TItem;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v0

    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 301
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 6
    .param p1, "position"    # I
    .param p2, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<*TItem;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 316
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 317
    .local v1, "length":I
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v2

    .line 319
    .local v2, "preItemCount":I
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 320
    .local v3, "saveItemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 321
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    sub-int v5, p1, v2

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 324
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 326
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "preItemCount":I
    .end local v3    # "saveItemCount":I
    :goto_1
    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v4

    goto :goto_1
.end method

.method public set(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<*TItem;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    .local p2, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mOriginalItems:Ljava/util/List;

    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v0

    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 264
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 266
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public withFilterPredicate(Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;)Lcom/mikepenz/fastadapter/adapters/ItemFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IItemAdapter$Predicate",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    .local p1, "filterPredicate":Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;, "Lcom/mikepenz/fastadapter/IItemAdapter$Predicate<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mFilterPredicate:Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;

    .line 56
    return-object p0
.end method

.method public withItemFilterListener(Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;)Lcom/mikepenz/fastadapter/adapters/ItemFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/ItemFilterListener",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemFilter;, "Lcom/mikepenz/fastadapter/adapters/ItemFilter<TModel;TItem;>;"
    .local p1, "listener":Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;, "Lcom/mikepenz/fastadapter/listeners/ItemFilterListener<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->mItemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    .line 42
    return-object p0
.end method
