.class public Lcom/mikepenz/fastadapter/utils/EventHookUtil;
.super Ljava/lang/Object;
.source "EventHookUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(",
            "Lcom/mikepenz/fastadapter/listeners/EventHook",
            "<TItem;>;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "event":Lcom/mikepenz/fastadapter/listeners/EventHook;, "Lcom/mikepenz/fastadapter/listeners/EventHook<TItem;>;"
    instance-of v0, p0, Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;

    invoke-direct {v0, p1, p0}, Lcom/mikepenz/fastadapter/utils/EventHookUtil$1;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .end local p0    # "event":Lcom/mikepenz/fastadapter/listeners/EventHook;, "Lcom/mikepenz/fastadapter/listeners/EventHook<TItem;>;"
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local p0    # "event":Lcom/mikepenz/fastadapter/listeners/EventHook;, "Lcom/mikepenz/fastadapter/listeners/EventHook<TItem;>;"
    :cond_1
    instance-of v0, p0, Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;

    if-eqz v0, :cond_2

    .line 79
    new-instance v0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$2;

    invoke-direct {v0, p1, p0}, Lcom/mikepenz/fastadapter/utils/EventHookUtil$2;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 100
    :cond_2
    instance-of v0, p0, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    if-eqz v0, :cond_3

    .line 101
    new-instance v0, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;

    invoke-direct {v0, p1, p0}, Lcom/mikepenz/fastadapter/utils/EventHookUtil$3;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 122
    :cond_3
    instance-of v0, p0, Lcom/mikepenz/fastadapter/listeners/CustomEventHook;

    if-eqz v0, :cond_0

    .line 124
    check-cast p0, Lcom/mikepenz/fastadapter/listeners/CustomEventHook;

    .end local p0    # "event":Lcom/mikepenz/fastadapter/listeners/EventHook;, "Lcom/mikepenz/fastadapter/listeners/EventHook<TItem;>;"
    invoke-virtual {p0, p2, p1}, Lcom/mikepenz/fastadapter/listeners/CustomEventHook;->attachEvent(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public static bind(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 7
    .param p0, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/mikepenz/fastadapter/listeners/EventHook",
            "<TItem;>;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "eventHooks":Ljava/util/List;, "Ljava/util/List<Lcom/mikepenz/fastadapter/listeners/EventHook<TItem;>;>;"
    if-nez p1, :cond_1

    .line 47
    :cond_0
    return-void

    .line 34
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/listeners/EventHook;

    .line 35
    .local v0, "event":Lcom/mikepenz/fastadapter/listeners/EventHook;, "Lcom/mikepenz/fastadapter/listeners/EventHook<TItem;>;"
    invoke-interface {v0, p0}, Lcom/mikepenz/fastadapter/listeners/EventHook;->onBind(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v2

    .line 36
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 37
    invoke-static {v0, p0, v2}, Lcom/mikepenz/fastadapter/utils/EventHookUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 40
    :cond_3
    invoke-interface {v0, p0}, Lcom/mikepenz/fastadapter/listeners/EventHook;->onBindMany(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v3

    .line 41
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<+Landroid/view/View;>;"
    if-eqz v3, :cond_2

    .line 42
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 43
    .local v1, "v":Landroid/view/View;
    invoke-static {v0, p0, v1}, Lcom/mikepenz/fastadapter/utils/EventHookUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static varargs toList([Landroid/view/View;)Ljava/util/List;
    .locals 1
    .param p0, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
