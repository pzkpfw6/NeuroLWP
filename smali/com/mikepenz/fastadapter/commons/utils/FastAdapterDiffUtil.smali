.class public Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;
.super Ljava/lang/Object;
.source "FastAdapterDiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;,
        Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDiff(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;)",
            "Landroid/support/v7/util/DiffUtil$DiffResult;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "adapter":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    new-instance v0, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->calculateDiff(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback",
            "<TItem;>;)",
            "Landroid/support/v7/util/DiffUtil$DiffResult;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "adapter":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "callback":Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback<TItem;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->calculateDiff(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 3
    .param p3, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback",
            "<TItem;>;Z)",
            "Landroid/support/v7/util/DiffUtil$DiffResult;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "adapter":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "callback":Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 34
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 36
    .local v0, "oldItems":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    new-instance v2, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;

    invoke-direct {v2, v0, p1, p2}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;-><init>(Ljava/util/List;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;)V

    invoke-static {v2, p3}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v1

    .line 39
    .local v1, "result":Landroid/support/v7/util/DiffUtil$DiffResult;
    if-eq p1, v0, :cond_3

    .line 41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 42
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_3
    return-object v1
.end method

.method public static calculateDiff(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Z)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 1
    .param p2, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;Z)",
            "Landroid/support/v7/util/DiffUtil$DiffResult;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "adapter":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    new-instance v0, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->calculateDiff(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;Ljava/util/List;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;)",
            "Landroid/support/v7/util/DiffUtil$DiffResult;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "adapter":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->calculateDiff(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback",
            "<TItem;>;)",
            "Landroid/support/v7/util/DiffUtil$DiffResult;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "adapter":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "callback":Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->calculateDiff(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;Ljava/util/List;Z)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 1
    .param p2, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;Z)",
            "Landroid/support/v7/util/DiffUtil$DiffResult;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "adapter":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->calculateDiff(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Landroid/support/v7/util/DiffUtil$DiffResult;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .param p1, "result"    # Landroid/support/v7/util/DiffUtil$DiffResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Landroid/support/v7/util/DiffUtil$DiffResult;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "adapter":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "TA;"
    new-instance v0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;-><init>(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 55
    return-object p0
.end method

.method public static set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;)TA;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "adapter":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    new-instance v0, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback",
            "<TItem;>;)TA;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "adapter":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "callback":Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback<TItem;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .param p3, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback",
            "<TItem;>;Z)TA;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "adapter":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "callback":Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback<TItem;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->calculateDiff(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    .line 72
    .local v0, "result":Landroid/support/v7/util/DiffUtil$DiffResult;
    invoke-static {p0, v0}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Landroid/support/v7/util/DiffUtil$DiffResult;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .param p2, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
            "<TModel;TItem;>;Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;Z)TA;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "adapter":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    new-instance v0, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static set(Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;Landroid/support/v7/util/DiffUtil$DiffResult;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .param p1, "result"    # Landroid/support/v7/util/DiffUtil$DiffResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Landroid/support/v7/util/DiffUtil$DiffResult;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "adapter":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "TA;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Landroid/support/v7/util/DiffUtil$DiffResult;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 120
    return-object p0
.end method

.method public static set(Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;Ljava/util/List;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;)TA;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "adapter":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    new-instance v0, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->set(Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static set(Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback",
            "<TItem;>;)TA;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "adapter":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "callback":Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 106
    return-object p0
.end method

.method public static set(Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;Z)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .param p3, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback",
            "<TItem;>;Z)TA;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "adapter":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "callback":Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 101
    return-object p0
.end method

.method public static set(Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;Ljava/util/List;Z)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .param p2, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(TA;",
            "Ljava/util/List",
            "<TItem;>;Z)TA;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "adapter":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "TA;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;->set(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 111
    return-object p0
.end method
