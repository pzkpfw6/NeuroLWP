.class public abstract Lcom/mikepenz/fastadapter/listeners/CustomEventHook;
.super Ljava/lang/Object;
.source "CustomEventHook.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/listeners/EventHook;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/listeners/EventHook",
        "<TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/mikepenz/fastadapter/listeners/CustomEventHook;, "Lcom/mikepenz/fastadapter/listeners/CustomEventHook<TItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract attachEvent(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public getFastAdapter(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 3
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/mikepenz/fastadapter/listeners/CustomEventHook;, "Lcom/mikepenz/fastadapter/listeners/CustomEventHook<TItem;>;"
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/mikepenz/fastadapter/FastAdapter;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 35
    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/IItem;
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")TItem;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/listeners/CustomEventHook;, "Lcom/mikepenz/fastadapter/listeners/CustomEventHook<TItem;>;"
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/listeners/CustomEventHook;->getFastAdapter(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    .line 47
    .local v0, "adapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-object v2

    .line 51
    :cond_1
    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 53
    .local v1, "pos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 55
    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v2

    goto :goto_0
.end method

.method public onBind(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/mikepenz/fastadapter/listeners/CustomEventHook;, "Lcom/mikepenz/fastadapter/listeners/CustomEventHook<TItem;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindMany(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/mikepenz/fastadapter/listeners/CustomEventHook;, "Lcom/mikepenz/fastadapter/listeners/CustomEventHook<TItem;>;"
    const/4 v0, 0x0

    return-object v0
.end method
