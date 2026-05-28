.class public Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;
.super Ljava/lang/Object;
.source "DefaultTypeInstanceCache.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/ITypeInstanceCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/ITypeInstanceCache",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field private final mTypeInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;, "Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache<TItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;->mTypeInstances:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;, "Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;->mTypeInstances:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 34
    return-void
.end method

.method public get(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;, "Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;->mTypeInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    return-object v0
.end method

.method public register(Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;, "Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache<TItem;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;->mTypeInstances:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;->mTypeInstances:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    const/4 v0, 0x1

    .line 23
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
