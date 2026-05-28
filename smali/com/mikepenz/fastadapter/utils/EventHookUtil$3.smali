.class final Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;
.super Ljava/lang/Object;
.source "EventHookUtil.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 101
    iput-object p1, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p2, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;->val$event:Lcom/mikepenz/fastadapter/listeners/EventHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 106
    .local v6, "tagAdapter":Ljava/lang/Object;
    instance-of v0, v6, Lcom/mikepenz/fastadapter/FastAdapter;

    if-eqz v0, :cond_0

    move-object v4, v6

    .line 107
    check-cast v4, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 109
    .local v4, "adapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    .line 111
    .local v3, "pos":I
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    .line 112
    invoke-virtual {v4, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v5

    .line 113
    .local v5, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    if-eqz v5, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;->val$event:Lcom/mikepenz/fastadapter/listeners/EventHook;

    check-cast v0, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v0

    .line 119
    .end local v3    # "pos":I
    .end local v4    # "adapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .end local v5    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
