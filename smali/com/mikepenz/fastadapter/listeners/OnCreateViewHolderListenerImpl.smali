.class public Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl;
.super Ljava/lang/Object;
.source "OnCreateViewHolderListenerImpl.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener",
        "<TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl;, "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl<TItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl;, "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl<TItem;>;"
    .local p1, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getEventHooks()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mikepenz/fastadapter/utils/EventHookUtil;->bind(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 35
    return-object p2
.end method

.method public onPreCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl;, "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl<TItem;>;"
    .local p1, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    invoke-virtual {p1, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->getTypeInstance(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mikepenz/fastadapter/IItem;->getViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method
