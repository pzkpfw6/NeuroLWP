.class public Lcom/mikepenz/fastadapter/select/SelectExtension;
.super Ljava/lang/Object;
.source "SelectExtension.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IAdapterExtension;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IAdapterExtension",
        "<TItem;>;"
    }
.end annotation


# static fields
.field protected static final BUNDLE_SELECTIONS:Ljava/lang/String; = "bundle_selections"


# instance fields
.field private mAllowDeselection:Z

.field private mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mMultiSelect:Z

.field private mSelectOnLongClick:Z

.field private mSelectWithItemUpdate:Z

.field private mSelectable:Z

.field private mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/ISelectionListener",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectWithItemUpdate:Z

    .line 35
    iput-boolean v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mMultiSelect:Z

    .line 37
    iput-boolean v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectOnLongClick:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mAllowDeselection:Z

    .line 41
    iput-boolean v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectable:Z

    return-void
.end method

.method private handleSelection(Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TItem;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    .local p2, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 274
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mAllowDeselection:Z

    if-eqz v3, :cond_0

    .line 283
    :cond_2
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v1

    .line 285
    .local v1, "selected":Z
    iget-boolean v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectWithItemUpdate:Z

    if-nez v3, :cond_3

    if-nez p1, :cond_6

    .line 286
    :cond_3
    iget-boolean v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mMultiSelect:Z

    if-nez v3, :cond_4

    .line 287
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect()V

    .line 289
    :cond_4
    if-eqz v1, :cond_5

    .line 290
    invoke-virtual {p0, p3}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(I)V

    goto :goto_0

    .line 292
    :cond_5
    invoke-virtual {p0, p3}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(I)V

    goto :goto_0

    .line 295
    :cond_6
    iget-boolean v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mMultiSelect:Z

    if-nez v3, :cond_8

    .line 297
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->getSelections()Ljava/util/Set;

    move-result-object v2

    .line 298
    .local v2, "selections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 299
    .local v0, "pos":I
    if-eq v0, p3, :cond_7

    .line 300
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(I)V

    goto :goto_1

    .line 306
    .end local v0    # "pos":I
    .end local v2    # "selections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_8
    if-nez v1, :cond_9

    move v3, v4

    :goto_2
    invoke-interface {p2, v3}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 307
    if-nez v1, :cond_a

    move v3, v4

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 310
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz v3, :cond_0

    .line 311
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-nez v1, :cond_b

    :goto_4
    invoke-interface {v3, p2, v4}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    goto :goto_0

    :cond_9
    move v3, v5

    .line 306
    goto :goto_2

    :cond_a
    move v3, v5

    .line 307
    goto :goto_3

    :cond_b
    move v4, v5

    .line 311
    goto :goto_4
.end method


# virtual methods
.method public deleteAllSelectedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v0, "deletedItems":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 490
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    move-result-object v2

    .line 491
    .local v2, "ri":Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;, "Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo<TItem;>;"
    iget-object v3, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    iget-object v3, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    instance-of v3, v3, Lcom/mikepenz/fastadapter/IItemAdapter;

    if-eqz v3, :cond_0

    .line 493
    iget-object v3, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    check-cast v3, Lcom/mikepenz/fastadapter/IItemAdapter;

    invoke-interface {v3, v1}, Lcom/mikepenz/fastadapter/IItemAdapter;->remove(I)Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 489
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 497
    .end local v2    # "ri":Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;, "Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo<TItem;>;"
    :cond_1
    return-object v0
.end method

.method public deselect()V
    .locals 4

    .prologue
    .line 378
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v2

    .line 379
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 380
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 381
    .local v1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(Lcom/mikepenz/fastadapter/IItem;)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v1    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    :cond_0
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyDataSetChanged()V

    .line 384
    return-void
.end method

.method public deselect(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 456
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(ILjava/util/Iterator;)V

    .line 457
    return-void
.end method

.method public deselect(ILjava/util/Iterator;)V
    .locals 3
    .param p1, "position"    # I
    .param p2    # Ljava/util/Iterator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    .local p2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 467
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    .line 468
    .local v0, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    if-eqz v0, :cond_0

    .line 469
    invoke-interface {v0, v2}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 471
    :cond_0
    if-eqz p2, :cond_1

    .line 472
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    .line 476
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz v1, :cond_2

    .line 477
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    invoke-interface {v1, v0, v2}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    .line 479
    :cond_2
    return-void
.end method

.method public deselect(Lcom/mikepenz/fastadapter/IItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    const/4 v1, 0x0

    .line 392
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-interface {p1, v1}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    .line 398
    :cond_0
    return-void
.end method

.method public deselect(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    .local p1, "positions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 445
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(ILjava/util/Iterator;)V

    goto :goto_0

    .line 448
    :cond_0
    return-void
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
    .line 244
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    new-instance v2, Landroid/support/v4/util/ArraySet;

    invoke-direct {v2}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 245
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<TItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 246
    iget-object v4, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v4, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 247
    .local v1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    :cond_1
    return-object v2
.end method

.method public getSelections()Ljava/util/Set;
    .locals 4
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
    .line 230
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    new-instance v1, Landroid/support/v4/util/ArraySet;

    invoke-direct {v1}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 231
    .local v1, "selections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 232
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    return-object v1
.end method

.method public init(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapterExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/IAdapterExtension",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    .local p1, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectable:Z

    return v0
.end method

.method public notifyAdapterDataSetChanged()V
    .locals 0

    .prologue
    .line 192
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    return-void
.end method

.method public notifyAdapterItemMoved(II)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 204
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    return-void
.end method

.method public notifyAdapterItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    return-void
.end method

.method public notifyAdapterItemRangeInserted(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 196
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    return-void
.end method

.method public notifyAdapterItemRangeRemoved(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 200
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    return-void
.end method

.method public onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;TItem;)Z"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    .local p3, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p4, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectOnLongClick:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectable:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0, p1, p4, p2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->handleSelection(Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V

    .line 173
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;TItem;)Z"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    .local p3, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p4, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectOnLongClick:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectable:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, p1, p4, p2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->handleSelection(Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V

    .line 182
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/MotionEvent;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;TItem;)Z"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    .local p4, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p5, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    const/4 v0, 0x0

    return v0
.end method

.method public performFiltering(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 218
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 149
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v2, "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 156
    iget-object v4, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v4, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 157
    .local v1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    .end local v1    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bundle_selections"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 404
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Z)V

    .line 405
    return-void
.end method

.method public select(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 332
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(IZ)V

    .line 333
    return-void
.end method

.method public select(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "fireEvent"    # Z

    .prologue
    .line 342
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(IZZ)V

    .line 343
    return-void
.end method

.method public select(IZZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "fireEvent"    # Z
    .param p3, "considerSelectableFlag"    # Z

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    const/4 v2, 0x1

    .line 353
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    .line 355
    .local v0, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    if-nez v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    :cond_2
    invoke-interface {v0, v2}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    .line 366
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz v1, :cond_3

    .line 367
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    invoke-interface {v1, v0, v2}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    .line 369
    :cond_3
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getOnClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 370
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getOnClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/mikepenz/fastadapter/listeners/OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    goto :goto_0
.end method

.method public select(Lcom/mikepenz/fastadapter/IItem;Z)V
    .locals 2
    .param p2, "considerSelectableFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    const/4 v1, 0x1

    .line 428
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-interface {p1, v1}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    goto :goto_0
.end method

.method public select(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    .local p1, "positions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 322
    .local v0, "position":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(I)V

    goto :goto_0

    .line 324
    .end local v0    # "position":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public select(Z)V
    .locals 4
    .param p1, "considerSelectableFlag"    # Z

    .prologue
    .line 413
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v2

    .line 414
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 415
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 416
    .local v1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-virtual {p0, v1, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Lcom/mikepenz/fastadapter/IItem;Z)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    .end local v1    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    :cond_0
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyDataSetChanged()V

    .line 419
    return-void
.end method

.method public set(Ljava/util/List;Z)V
    .locals 0
    .param p2, "resetFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;Z)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    return-void
.end method

.method public toggleSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 260
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(I)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(I)V

    goto :goto_0
.end method

.method public withAllowDeselection(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 0
    .param p1, "allowDeselection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mAllowDeselection:Z

    .line 91
    return-object p0
.end method

.method public withMultiSelect(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 0
    .param p1, "multiSelect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mMultiSelect:Z

    .line 69
    return-object p0
.end method

.method public withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 131
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    if-nez p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bundle_selections"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 137
    .local v3, "selectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v5, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v5}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 138
    iget-object v5, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v5, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v2

    .line 139
    .local v2, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "id":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Lcom/mikepenz/fastadapter/IItem;Z)V

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 144
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    :cond_2
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->notifyAdapterDataSetChanged()V

    goto :goto_0
.end method

.method public withSelectOnLongClick(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 0
    .param p1, "selectOnLongClick"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectOnLongClick:Z

    .line 80
    return-object p0
.end method

.method public withSelectWithItemUpdate(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 0
    .param p1, "selectWithItemUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectWithItemUpdate:Z

    .line 58
    return-object p0
.end method

.method public withSelectable(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 0
    .param p1, "selectable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectable:Z

    .line 102
    return-object p0
.end method

.method public withSelectionListener(Lcom/mikepenz/fastadapter/ISelectionListener;)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/ISelectionListener",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/mikepenz/fastadapter/select/SelectExtension;, "Lcom/mikepenz/fastadapter/select/SelectExtension<TItem;>;"
    .local p1, "selectionListener":Lcom/mikepenz/fastadapter/ISelectionListener;, "Lcom/mikepenz/fastadapter/ISelectionListener<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->mSelectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    .line 120
    return-object p0
.end method
