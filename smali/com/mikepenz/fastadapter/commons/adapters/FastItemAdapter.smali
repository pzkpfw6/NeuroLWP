.class public Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
.super Lcom/mikepenz/fastadapter/FastAdapter;
.source "FastItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Lcom/mikepenz/fastadapter/FastAdapter",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field private itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/FastAdapter;-><init>()V

    .line 22
    invoke-static {}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->items()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 23
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->addAdapter(ILcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 24
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->cacheSizes()V

    .line 25
    return-void
.end method


# virtual methods
.method public add(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    .local p2, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mikepenz/fastadapter/IItem;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 220
    return-object p0
.end method

.method public add(ILjava/util/List;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 188
    return-object p0
.end method

.method public final varargs add(I[Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TItem;)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    .local p2, "items":[Lcom/mikepenz/fastadapter/IItem;, "[TItem;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 177
    return-object p0
.end method

.method public add(Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mikepenz/fastadapter/IItem;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 209
    return-object p0
.end method

.method public add(Ljava/util/List;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 165
    return-object p0
.end method

.method public final varargs add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TItem;)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    .local p1, "items":[Lcom/mikepenz/fastadapter/IItem;, "[TItem;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 155
    return-object p0
.end method

.method public clear()Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 261
    return-object p0
.end method

.method public filter(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->filter(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterItemCount()I
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getAdapterItemCount()I

    move-result v0

    return v0
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v0

    return v0
.end method

.method public getGlobalPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 102
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getGlobalPosition(I)I

    move-result v0

    return v0
.end method

.method public getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    return-object v0
.end method

.method public getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter",
            "<*TItem;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v0

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getOrder()I

    move-result v0

    return v0
.end method

.method public move(II)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->move(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 232
    return-object p0
.end method

.method public remapMappedTypes()V
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->remapMappedTypes()V

    .line 269
    return-void
.end method

.method public remove(I)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 242
    return-object p0
.end method

.method public removeItemRange(II)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .param p1, "position"    # I
    .param p2, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 253
    return-object p0
.end method

.method public set(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    .local p2, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 199
    return-object p0
.end method

.method public set(Ljava/util/List;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->set(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 120
    return-object p0
.end method

.method public setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 131
    return-object p0
.end method

.method public setNewList(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .param p2, "retainFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;Z)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->setNewList(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 144
    return-object p0
.end method

.method public withUseIdDistributor(Z)Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;
    .locals 1
    .param p1, "useIdDistributor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;, "Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/commons/adapters/FastItemAdapter;->getItemAdapter()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->withUseIdDistributor(Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 44
    return-object p0
.end method
