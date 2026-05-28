.class final Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "FastAdapterDiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FastAdapterCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Landroid/support/v7/util/DiffUtil$Callback;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private final oldItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;, "Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback<TItem;>;"
    .local p1, "oldItems":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p3, "callback":Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback<TItem;>;"
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->oldItems:Ljava/util/List;

    .line 131
    iput-object p2, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->items:Ljava/util/List;

    .line 132
    iput-object p3, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->callback:Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;

    .line 133
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .prologue
    .line 152
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;, "Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->callback:Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->oldItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->items:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .prologue
    .line 147
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;, "Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->callback:Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->oldItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->items:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 4
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;, "Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback<TItem;>;"
    iget-object v1, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->callback:Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;

    iget-object v2, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->oldItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->items:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3, p2}, Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;->getChangePayload(Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getNewListSize()I
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;, "Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;, "Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterCallback;->oldItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
