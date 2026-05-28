.class final Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;
.super Ljava/lang/Object;
.source "FastAdapterDiffUtil.java"

# interfaces
.implements Landroid/support/v7/util/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FastAdapterListUpdateCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
        "<TModel;TItem;>;Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v7/util/ListUpdateCallback;"
    }
.end annotation


# instance fields
.field private final adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;, "Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback<TA;TModel;TItem;>;"
    .local p1, "adapter":Lcom/mikepenz/fastadapter/adapters/ModelAdapter;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 169
    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 188
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;, "Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback<TA;TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(IILjava/lang/Object;)V

    .line 189
    return-void
.end method

.method public onInserted(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 173
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;, "Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback<TA;TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    .line 174
    return-void
.end method

.method public onMoved(II)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 183
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;, "Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback<TA;TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemMoved(II)V

    .line 184
    return-void
.end method

.method public onRemoved(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 178
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;, "Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback<TA;TModel;TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterDiffUtil$FastAdapterListUpdateCallback;->adapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    .line 179
    return-void
.end method
