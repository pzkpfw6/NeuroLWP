.class final Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;
.super Ljava/lang/Object;
.source "EventHookUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/fastadapter/utils/EventHookUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Lcom/mikepenz/fastadapter/listeners/EventHook;

.field final synthetic val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/mikepenz/fastadapter/listeners/EventHook;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p2, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;->val$event:Lcom/mikepenz/fastadapter/listeners/EventHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v4, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v5, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 63
    .local v3, "tagAdapter":Ljava/lang/Object;
    instance-of v4, v3, Lcom/mikepenz/fastadapter/FastAdapter;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 64
    check-cast v0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 66
    .local v0, "adapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v4, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v4}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 68
    .local v2, "pos":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 69
    invoke-virtual {v0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 70
    .local v1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    if-eqz v1, :cond_0

    .line 72
    iget-object v4, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;->val$event:Lcom/mikepenz/fastadapter/listeners/EventHook;

    check-cast v4, Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    invoke-virtual {v4, p1, v2, v0, v1}, Lcom/mikepenz/fastadapter/listeners/ClickEventHook;->onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)V

    .line 76
    .end local v0    # "adapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .end local v1    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    .end local v2    # "pos":I
    :cond_0
    return-void
.end method
