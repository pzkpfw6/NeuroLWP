.class public Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;
.super Ljava/lang/Object;
.source "DiffCallbackImpl.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/commons/utils/DiffCallback",
        "<TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl<TItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/mikepenz/fastadapter/IItem;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;TItem;)Z"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl<TItem;>;"
    .local p1, "oldItem":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    .local p2, "newItem":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl<TItem;>;"
    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    check-cast p2, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;->areContentsTheSame(Lcom/mikepenz/fastadapter/IItem;Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(Lcom/mikepenz/fastadapter/IItem;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;TItem;)Z"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl<TItem;>;"
    .local p1, "oldItem":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    .local p2, "newItem":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl<TItem;>;"
    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    check-cast p2, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;->areItemsTheSame(Lcom/mikepenz/fastadapter/IItem;Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v0

    return v0
.end method

.method public getChangePayload(Lcom/mikepenz/fastadapter/IItem;ILcom/mikepenz/fastadapter/IItem;I)Ljava/lang/Object;
    .locals 1
    .param p2, "oldItemPosition"    # I
    .param p4, "newItemPosition"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;ITItem;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl<TItem;>;"
    .local p1, "oldItem":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    .local p3, "newItem":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;, "Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl<TItem;>;"
    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    check-cast p3, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mikepenz/fastadapter/commons/utils/DiffCallbackImpl;->getChangePayload(Lcom/mikepenz/fastadapter/IItem;ILcom/mikepenz/fastadapter/IItem;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
